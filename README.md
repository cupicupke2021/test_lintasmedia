# Test Programmer 
Jakarta, 10 September 2021

Source code untuk testing programmer, menggunakan framework laravel 8.XX dengan konsep HMVC
dengan ubahan pada struktur file nya tanpa merusak konsep Laravel Framework

Keuntungan yang di dapat <br>
-- Dynamic Route (Programmer tidak perlu membuat route setiap kali membuat menu, route akan automatic termapping) <br> 
-- Dynamic Controller (Programmer tidak perlu membuat dan menyatukan controller untuk satu menu, main controller akan di handle oleh <b>System.php</b> dan <b>Start.php</b>) <br> 
-- Modular (Bersifat modular)<br> 
-- Multi Companies (Bisa diterapkan untuk perusahaan dengan banyak anak perusahaan)
-- Rest API CRUD (Mendukung REST Api, tanpa membuat lagi codingan khusus api, semua privilege akan mengikuti system berjalan)<br> 

# User & Group 
1. Group Admin 
    User : demo 
    Pass : demo123 
2. Group Staff Gudang 
    User : john_doe 
    Pass : kucingbadak
3. Group Root (super admin)
    User : yusuf 
    Pass : yusuf123
    
# Config 
rubah .env dengan config database yang sesuai 

rubah config/app.php dengan config url yang sesuai 

# SQL 

Download erp.sql kemudian import ke MYSQL

# Contoh Tampilan 

1. Menu Manager 
   Menu untuk mengatur seluruh menu yang ada dalam sistem 
   
   ![image](https://user-images.githubusercontent.com/89963599/132788838-f0d22b2c-7861-4957-81a3-0d8302e840fb.png)

   Pengaturan detail menu 
   
   ![image](https://user-images.githubusercontent.com/89963599/132788910-6d5067e1-c666-4952-b9b1-9eb21f0cfdd2.png)
   
   1. Docnumed  		: artinya memberikan fitur dokumen number secara dinamis pada menu ini, pengaturan bisa di set di menu document number setting pada group root 
   2. Posting   		: artinya memberikan fitur posting pada menu ini
   3. Attachment 		: artinya memberikan fitur upload attachment pada menu ini 
   4. Approval  		: artinya memberikan fitur approval (workflow) pada menu ini, pengaturan bisa di set di menu sign staging setting pada group root
   5. Filter By Company 	: artinya list data akan terfilter berdasarkan hak akses company code (jika sistem dipakai multi perusahaan/anak perusahaan)
   6. Filter By Department : artinya list data akan terfilter berdasarkan hak akses per departemen 
   7. Filter By Position   : artinya list data akan terfilter berdasarkan hak ases per jabatan 
   8. Filter By User	: artinya list data akan terfilter sesuai masing - masing user sesuai dengan hak akses 
   
2. Group Manager 
   Menu Untuk mengatur hak akses per group 
   
   ![image](https://user-images.githubusercontent.com/89963599/132789795-d9713df5-ac15-45ca-85e1-80699c909b65.png)
   
   Contoh diatas artinya group root bisa mengakses modul journal entry dengan detail akses dapat melakukan 
   1. edit 
   2. add
   3. edit data detail 
   4. add data detail 
   5. delete data detail 
   6. import excel 


# Rest API (Untuk front end) 

Setting Token Untuk Rest API (postman) 

1 token di set per 1 user jadi privilege mengikuti privilege group 

![image](https://user-images.githubusercontent.com/89963599/131812671-51292bbc-9d97-4440-8a48-bba0a4ffef9f.png)


Yusuf Syaefudin 
Note : Codingan di atas merupakan murni ide dari saya sendiri, 
