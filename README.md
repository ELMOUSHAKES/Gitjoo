# نظام حضور وغياب بالـ QR (بيانات مشتركة بين الأجهزة)

الملفات: index.html و config.js و setup.sql

## 1) قاعدة البيانات (Supabase)
1. أنشئ حسابًا ومشروعًا جديدًا في supabase.com.
2. افتح SQL Editor والصق محتوى setup.sql ثم Run.
3. من Authentication > Users اضغط Add user وأنشئ مستخدمًا (بريد وكلمة سر)، وفعّل Auto Confirm User.
4. من إعدادات Authentication عطّل السماح بتسجيل مستخدمين جدد (Allow new users to sign up) حتى لا ينشئ أحد حسابًا.
5. من Project Settings > API انسخ Project URL و anon public key وضعهما في config.js.

## 2) النشر
1. ارفع الملفات الأربعة على مستودع GitHub.
2. في Vercel: Add New > Project > Import للمستودع > Deploy.

الدخول بالبريد وكلمة السر من الخطوة 3. أسماء القوائم قد تتغير قليلًا في Supabase.
