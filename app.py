import streamlit as st
from sqlalchemy import text

# Use st.session_state instead of st.connection

conn = st.connection("postgresql", type="sql", 
                     url="postgresql://ammaarrazaan.yahya231119:PfCboAV5rl2L@ep-bold-salad-71563862.us-east-2.aws.neon.tech/web")
with conn.session as session:
    query = text('DROP TABLE IF EXISTS "gaji";'
                 'CREATE TABLE "gaji" (id SERIAL PRIMARY KEY,'
                 'nama varchar(255) default NULL,'
                 'email varchar(255) default NULL,'
                 'phone varchar(100) default NULL,'
                 'alamat varchar(255) default NULL,'
                 'company varchar(255),'
                 'masa_kerja integer NULL,'
                 'tanggal_lahir varchar(255),'
                 'gaji varchar(100) default NULL);')
    session.execute(query)

st.header('Data Gaji Pegawai')
page = st.sidebar.selectbox("Pilih Menu", ["View Data", "Edit Data"])

if page == "View Data":
    data = conn.query('SELECT * FROM gaji ORDER BY id;', ttl="0").set_index('id')
    st.dataframe(data)

if page == "Edit Data":
    if st.button('Tambah Data'):
        with conn.session as session:
            query = text('INSERT INTO gaji (nama,email,phone,alamat,company,masa_kerja,tanggal_lahir,gaji) VALUES'\
                         "('', '', '', '', '', 0, '', '');")
            session.execute(query)
            session.commit()

    data = conn.query('SELECT * FROM gaji ORDER By id;', ttl="0")
    for _, result in data.iterrows():
        id = result['id']
        nama_lama = result["nama"]
        email_lama = result["email"]
        phone_lama = result["phone"]
        alamat_lama = result["alamat"]
        company_lama = result["company"]
        masa_kerja_lama = result["masa_kerja"]
        tanggal_lahir_lama = result["tanggal_lahir"]
        gaji_lama = result["gaji"]

        with st.expander(f'a.n. {nama_lama}'):
            with st.form(f'data-{id}'):
                nama_baru = st.text_input("Nama", nama_lama)
                email_baru = st.text_input("Email", email_lama)
                phone_baru = st.text_input("Phone", phone_lama)
                alamat_baru = st.text_input("Alamat", alamat_lama)
                company_baru = st.text_input("Company", company_lama)
                masa_kerja_baru = st.number_input("Masa Kerja", value=masa_kerja_lama)
                tanggal_lahir_baru = st.text_input("Tanggal Lahir", tanggal_lahir_lama)
                gaji_baru = st.text_input("Gaji", gaji_lama)

                if st.form_submit_button('UPDATE'):
                    with conn.session as session:
                        query = text('UPDATE gaji '
                                     'SET nama=:1, email=:2, phone=:3, alamat=:4, company=:5, masa_kerja=:6, tanggal_lahir=:7, gaji=:8 '
                                     'WHERE id=:9;')
                        session.execute(query, {'1': nama_baru, '2': email_baru, '3': phone_baru, '4': alamat_baru,
                                               '5': company_baru, '6': masa_kerja_baru, '7': tanggal_lahir_baru,
                                               '8': gaji_baru, '9': id})
                        session.commit()
                        # st.experimental_rerun()

                if st.form_submit_button('DELETE'):
                    query = text(f'DELETE FROM gaji WHERE id=:1;')
                    session.execute(query, {'1': id})
                    session.commit()
                    # st.experimental_rerun()
