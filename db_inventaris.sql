CREATE TABLE jenis(
    id_jenis VARCHAR (100) NOT NULL,
    nama_jenis VARCHAR (50) NOT NULL,
    kode_jenis VARCHAR(100) NOT NULL,
    keterangan VARCHAR (100) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_jenis)
    );
    
    CREATE TABLE ruangan(
    id_ruangan VARCHAR (20) NOT NULL,
    nama_ruangan VARCHAR (50) NOT NULL,
    kode_ruangan VARCHAR(100) NOT NULL,
    keterangan VARCHAR (100) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_ruangan)
        );
        
        CREATE TABLE petugas(
    id_petugas VARCHAR (20) NOT NULL,
    username VARCHAR (50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    nama_petugas VARCHAR (100) NOT NULL,
    id_level VARCHAR (100) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_petugas)
            );
            
            
            CREATE TABLE level(
    id_level VARCHAR (100) NOT NULL,
    nama_level VARCHAR (50) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_level)
                );
                
            CREATE TABLE pegawai(
    id_pegawai VARCHAR (100) NOT NULL,
    nama_pegawai VARCHAR (50) NOT NULL,
    nip VARCHAR(100) NOT NULL,
    alamat VARCHAR (100) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_pegawai)
   );
   
   CREATE TABLE peminjaman(
    id_peminjaman VARCHAR (20) NOT NULL,
    tanggal_pinjam DATE NOT NULL,
    tanggal_kembali DATE NOT NULL,
    status_peminjaman VARCHAR (100) NOT NULL,
    id_pegawai VARCHAR (100),
    PRIMARY KEY (id_peminjaman)
                );
   CREATE TABLE detail_pinjam(
    id_detail_pinjam VARCHAR (100) NOT NULL,
    id_inventaris VARCHAR (50) NOT NULL,
    jumlah INTEGER NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_detail_pinjam)
       );
       
       CREATE TABLE inventaris(
    id_inventaris VARCHAR (100) NOT NULL,
    nama VARCHAR (50) NOT NULL,
    kondisi VARCHAR(100) NOT NULL,
    keterangan VARCHAR (100) NOT NULL,
    jumlah INTEGER NOT NULL,
    id_jenis VARCHAR (100) NOT NULL,
     tanggal_register DATE NOT NULL,
           id_ruang VARCHAR (100) NOT NULL,
           kode_inventaris VARCHAR (100) NOT NULL,
           id_petugas VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_inventaris)
           );