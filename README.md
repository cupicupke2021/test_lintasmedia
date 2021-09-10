# Test Programmer 
-- Dynamic Route 
-- Dynamic Controller 
-- Modular 
-- All Module in app/Systems 
-- Rest API CRUD

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


# Contoh Tampilan 

1. Menu Manager 
   Menu untuk mengatur seluruh menu yang ada dalam sistem 
   
   ![image](https://user-images.githubusercontent.com/89963599/132788838-f0d22b2c-7861-4957-81a3-0d8302e840fb.png)

   Pengaturan detail menu 
   
   ![image](https://user-images.githubusercontent.com/89963599/132788910-6d5067e1-c666-4952-b9b1-9eb21f0cfdd2.png)
   
   Docnumed  		: artinya memberikan fitur dokumen number secara dinamis pada menu ini, pengaturan bisa di set di menu document number setting pada group root 
   Posting   		: artinya memberikan fitur posting pada menu ini
   Attachment 		: artinya memberikan fitur upload attachment pada menu ini 
   Approval  		: artinya memberikan fitur approval (workflow) pada menu ini, pengaturan bisa di set di menu sign staging setting pada group root
   Filter By Company 	: artinya list data akan terfilter berdasarkan hak akses company code (jika sistem dipakai multi perusahaan/anak perusahaan)
   Filter By Department : artinya list data akan terfilter berdasarkan hak akses per departemen 
   Filter By Position   : artinya list data akan terfilter berdasarkan hak ases per jabatan 
   Filter By User	: artinya list data akan terfilter sesuai masing - masing user sesuai dengan hak akses 
   
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


   



Setting Token Untuk Rest API (postman) 

1 token di set per 1 user jadi privilege mengikuti privilege user 

![image](https://user-images.githubusercontent.com/89963599/131812671-51292bbc-9d97-4440-8a48-bba0a4ffef9f.png)


