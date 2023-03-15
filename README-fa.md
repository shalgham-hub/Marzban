<p align="center">
  <a href="https://github.com/gozargah/marzban" target="_blank" rel="noopener noreferrer">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://github.com/Gozargah/Marzban-docs/raw/master/screenshots/logo-dark.png">
      <img width="160" height="160" src="https://github.com/Gozargah/Marzban-docs/raw/master/screenshots/logo-light.png">
    </picture>
  </a>
</p>

<h1 align="center"/>مرزبان</h1>

<p align="center">
     راه حل یکپارچه برای مدیریت پروتکل های مختلف. قدرت گرفته از <a href="https://github.com/XTLS/Xray-core">Xray</a>
</p>

<br/>
<p align="center">
    <a href="#">
        <img src="https://img.shields.io/github/actions/workflow/status/gozargah/marzban/build.yml?style=flat-square" />
    </a>
    <a href="https://hub.docker.com/r/gozargah/marzban" target="_blank">
        <img src="https://img.shields.io/docker/pulls/gozargah/marzban?style=flat-square&logo=docker" />
    </a>
    <a href="#">
        <img src="https://img.shields.io/github/license/gozargah/marzban?style=flat-square" />
    </a>
    <a href="https://t.me/gozargah_marzban" target="_blank">
        <img src="https://img.shields.io/badge/telegram-group-blue?style=flat-square&logo=telegram" />
    </a>
    <a href="#">
        <img src="https://img.shields.io/badge/twitter-commiunity-blue?style=flat-square&logo=twitter" />
    </a>
    <a href="#">
        <img src="https://img.shields.io/github/stars/gozargah/marzban?style=social" />
    </a>
</p>

<p align="center">
	<a href="./README.md">
	English
	</a>
	/
	<a href="./README-fa.md">
	فارسی
	</a>
</p>

<p align="center">
  <a href="httpps://github.com/gozargah/marzban" target="_blank" rel="noopener noreferrer" >
    <img src="https://github.com/Gozargah/Marzban-docs/raw/master/screenshots/preview.png" alt="Elk screenshots" width="600" height="auto">
  </a>
</p>


## فهرست مطالب
- [بررسی اجمالی](#بررسی-اجمالی)
  - [چرا مرزبان؟](#چرا-مرزبان)
    - [امکانات](#امکانات)
- [راهنمای نصب](#راهنمای-نصب)
  - [نصب به کمک Docker (پیشنهادی)](#نصب-به-کمک-docker-پیشنهادی)
  - [نصب به صورت دستی (پیچیده)](#نصب-به-صورت-دستی-پیچیده)
- [تنظیمات](#تنظیمات)
- [استفاده از API](#استفاده-از-api)
- [پشتیبان گیری از مرزبان](#پشتیبان-گیری-از-مرزبان)
- [ربات تلگرام](#ربات-تلگرام)
- [کمک مالی](#کمک-مالی)
- [لایسنس](#لایسنس)
- [مشارکت در توسعه](#مشارکت-در-توسعه)


# بررسی اجمالی

مرزبان یک نرم افزار (وب اپلیکیشن) مدیریت پروکسی است که امکان مدیریت چند صد حساب پروکسی را با قدرت و دسترسی بالا فراهم میکند. مرزبان از [Xray-core](https://github.com/XTLS/Xray-core) قدرت گرفته و با Python و React پیاده سازی شده است.

## چرا مرزبان؟

مرزبان دارای یک رابط کاربری ساده است که قابلیت های زیادی دارد. مرزبان امکان ایجاد چند نوع پروکسی برای کاربر ها را فراهم میکند بدون اینکه به تنظیمات پیچیده ای نیاز داشته باشید. به کمک رابط کاربری تحت وب مرزبان، شما میتوانید کاربران را مانیتور، ویرایش و در صورت نیاز، محدود کنید.

### امکانات

- **رابط کاربری تحت وب** آماده
- به صورت **REST API** پیاده سازی شده
- پشتیبانی از پروتکل های **Vmess**, **VLESS**, **Trojan** و **Shadowsocks**
- امکان فعالسازی **چندین پروتکل** برای هر یوزر
- امکان ساخت **چندین کاربر** بر روی یک inbound
- پشتیبانی از **چندین inbound** بر روی **یک port** (به کمک fallbacks)
- محدودیت بر اساس مصرف **ترافیک** و **تاریخ انقضا**
- محدودیت **ترافیک دوره ای** (به عنوان مثال روزانه، هفتگی و غیره)
- پشتیبانی از **Subscription link** سازگار با **V2ray** _(مثل نرم افزار های V2RayNG, OneClick, Nekoray و...)_ و **Clash**
- ساخت **لینک اشتراک گذاری** و **QRcode** به صورت خودکار
- مانیتورینگ منابع سرور و **مصرف ترافیک**
- پشتیبانی از تنظیمات xray
- پشتیبانی از **TLS**
- **ربات تلگرام**
- قابلیت ایجاد **چندین مدیر** (تکمیل نشده است)

# راهنمای نصب

> ما به شدت پیشنهاد میکنیم برای استفاده در ابعاد بزرگ (production) از Docker image مرزبان استفاده کنید. در اینصورت برای ارتقا به نسخه های بعدی راحتتر خواهید بود و مطمئن تر است.

## نصب به کمک Docker (پیشنهادی)

چندین استراتژی بر اساس نیاز های مختلف آماده شده است. برای اجرای مرزبان به کمک Docker [لطفا این مطلب را مطالعه کنید](https://github.com/Gozargah/Marzban-examples).

شما می توانید یکی از تنظیمات را به دلخواه انتخاب کنید. مثلا:
- [کاملا تک پورت](https://github.com/Gozargah/Marzban-examples/tree/master/fully-single-port#%DA%A9%D8%A7%D9%85%D9%84%D8%A7-%D8%AA%DA%A9-%D9%BE%D9%88%D8%B1%D8%AA)
- [پروکسی تک پورت](https://github.com/Gozargah/Marzban-examples/tree/master/single-port-proxy#%D9%BE%D8%B1%D9%88%DA%A9%D8%B3%DB%8C-%D8%AA%DA%A9-%D9%BE%D9%88%D8%B1%D8%AA)
- [چند پورت](https://github.com/Gozargah/Marzban-examples/tree/master/multi-port#%DA%86%D9%86%D8%AF-%D9%BE%D9%88%D8%B1%D8%AA)


## نصب به صورت دستی (پیچیده)

لطفا xray را نصب کنید.
شما میتواند به کمک [Xray-install](https://github.com/XTLS/Xray-install) این کار را انجام دهید.

```bash
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
```

پروژه را clone کنید و dependency ها را نصب کنید. دقت کنید که نسخه پایتون شما Python>=3.8 باشد.

```bash
git clone https://github.com/Gozargah/Marzban.git
cd Marzban
wget -qO- https://bootstrap.pypa.io/get-pip.py | python3 -
python3 -m pip install -r requirements.txt
```

همچنین میتواند از , [Python Virtualenv](https://pypi.org/project/virtualenv/) هم استفاده کنید.

سپس کامند زیر را اجرا کنید تا دیتابیس تنظیم شود.

```bash
alembic upgrade head
```

حالا یک کپی از `.env.example` با نام `.env` بسازید و با یک ادیتور آن را باز کنید و تنظیمات دلخواه خود را انجام دهید. یه عنوان مثال نام کاربری و رمز عبور را میتوانید در این فایل تغییر دهید.

```bash
cp .env.example .env
nano .env
```

> برای اطلاعات بیشتر بخش [تنظیمات](#تنظیمات) را مطالعه کنید.

در انتها, مرزبان را به کمک دستور زیر اجرا کنید.

```bash
python3 main.py
```

به صورت پیشفرض مرزبان در آدرس `http://localhost:8000/dashboard` اجرا میشود. شما میتوانید با تغییر `UVICORN_HOST` و `UVICORN_PORT`، هاست و پورت را تغییر دهید.

# تنظیمات

> متغیر های زیر در فایل ‍`env` یا `.env` استفاده میشوند. شما می توانید با تعریف و تغییر آن ها، تنظیمات مرزبان را تغییر دهید.

|                                                                                                                 توضیحات |              متغیر              |
| ----------------------------------------------------------------------------------------------------------------------: | :-----------------------------: |
|                                                                                      نام کاربری مدیر کل (پیشفرض: admin) |          SUDO_USERNAME          |
|                                                                                        رمز عبور مدیر کل (پیشفرض: admin) |          SUDO_PASSWORD          |
|          آدرس دیتابیس ([بر اساس مستندات SQLAlchemy](https://docs.sqlalchemy.org/en/20/core/engines.html#database-urls)) |     SQLALCHEMY_DATABASE_URL     |
|                                                              آدرس هاستی که مرزبان روی آن اجرا میشود (پیشفرض: `0.0.0.0`) |          UVICORN_HOST           |
|                                                                      پورتی که مرزبان روی آن اجرا میشود (پیشفرض: `8000`) |          UVICORN_PORT           |
|                                                                               اجرای مرزبان بر روی یک Unix domain socket |           UVICORN_UDS           |
|                                                                              آدرس گواهی SSL به جهت ایمن کردن پنل مرزبان |      UVICORN_SSL_CERTFILE       |
|                                                                                                     آدرس کلید گواهی SSL |       UVICORN_SSL_KEYFILE       |
|                                                                       مسیر فایل json تنظیمات xray (پیشفرض: `xray.json`) |            XRAY_JSON            |
|                                                                        مسیر باینری xray (پیشفرض: `/usr/local/bin/xray`) |      XRAY_EXECUTABLE_PATH       |
|                                                                   مسیر asset های xray (پیشفرض: `/usr/local/share/xray`) |        XRAY_ASSETS_PATH         |
| پیشوند (یا هاست) آدرس های اشتراکی (زمانی کاربرد دارد که نیاز دارید دامنه subscription link ها با دامنه پنل متفاوت باشد) |  XRAY_SUBSCRIPTION_URL_PREFIX   |
|                                                                        تگ inboundای که به عنوان fallback استفاده میشود. |   XRAY_FALLBACKS_INBOUND_TAG    |
|                                                تگ های inbound ای که لازم نیست در کانفیگ های ساخته شده وجود داشته باشند. |    XRAY_EXCLUDE_INBOUND_TAGS    |
|                                                       توکن ربات تلگرام (دریافت از [@botfather](https://t.me/botfather)) |       TELEGRAM_API_TOKEN        |
|                                          آیدی عددی ادمین در تلگرام (دریافت از [@userinfobot](https://t.me/userinfobot)) |        TELEGRAM_ADMIN_ID        |
|                                                                                               اجرای ربات از طریق پروکسی |       TELEGRAM_PROXY_URL        |
|                            مدت زمان انقضا توکن دسترسی به پنل مرزبان, `0` به معنای بدون تاریخ انقضا است (پیشفرض: `1440`) | JWT_ACCESS_TOKEN_EXPIRE_MINUTES |
|                                                       فعال سازی داکیومنتیشن به آدرس `/docs` و `/redoc`(پیشفرض: `False`) |              DOCS               |
|                                                                     فعالسازی حالت توسعه (development) (پیشفرض: `False`) |              DEBUG              |


# استفاده از API
مرزبان به توسعه دهندگانAPI REST ارائه می دهد. برای مشاهده اسناد API در قالب Swagger UI یا ReDoc، متغیر `DOCS=True` را در تنظیمات خود ست کنید و در مرورگر به مسیر `/docs` و `/redoc` بروید.


# پشتیبان گیری از مرزبان
بهتر است همیشه از فایل های مرزبان خود نسخه پشتیبان تهیه کنید تا در صورت خرابی سیستم یا حذف تصادفی اطلاعات از دست نروند. مراحل تهیه نسخه پشتیبان از مرزبان به شرح زیر است:

1. به طور پیش فرض، تمام فایل های مهم مرزبان در `/var/lib/marzban` ذخیره می شوند (در نسخه داکر). کل پوشه `/var/lib/marzban` را در یک مکان پشتیبان مورد نظر خود، مانند هارد دیسک خارجی یا فضای ذخیره سازی ابری کپی کنید.
2. علاوه بر این، مطمئن شوید که از فایل env خود که حاوی متغیرهای تنظیمات شما است و همچنین فایل پیکربندی Xray خود نسخه پشتیبان تهیه کنید.

با انجام این مراحل، می توانید اطمینان حاصل کنید که از تمام فایل ها و داده های مرزبان خود یک نسخه پشتیبان تهیه کرده اید. به خاطر داشته باشید که نسخه های پشتیبان خود را به طور مرتب به روز کنید تا آنها را به روز نگه دارید.

# ربات تلگرام
مرزبان دارای یک ربات تلگرام داخلی است که می تواند مدیریت سرور، ایجاد و حذف کاربر و ارسال نوتیفیکیشن را انجام دهد. این ربات را می توان با انجام چند مرحله ساده به راحتی فعال کرد

برای فعال کردن ربات تلگرام:

1. در تنظیمات، متغیر`TELEGRAM_API_TOKEN` را به API TOKEN ربات تلگرام خود تنظیم کنید.
2. همینطور، متغیر`TELEGRAM_ADMIN_ID` را به شناسه عددی حساب تلگرام خود تنظیم کنید. شما می‌توانید شناسه خود را از [@userinfobot](https://t.me/userinfobot) دریافت کنید.


# کمک مالی
اگر مرزبان را برای شما مفید بوده و می‌خواهید از توسعه آن حمایت کنید، می‌توانید در یکی از طریق یکی از شبکه های کریپتو زیر کمک مالی کنید:

- شبکه TRON (TRX): `TX8kJoDcowQPBFTYHAJR36GyoUKP1Xwzkb`
- شبکه ETH، BNB، MATIC: `0xFdc9ad32454FA4fc4733270FCc12ddBFb68b83F7`
- شبکه بیت کوین: `bc1qpys2nefgsjjgae3g3gqy9crsv3h3rm96tlkz0v`
- شبکه Dogecoin: `DJAocBAu8y6LwhDKUktLAyzV8xyoFeHH6R`

از حمایت شما متشکرم!


# لایسنس

توسعه یافته شده در [ناشناس!] و منتشر شده تحت لایسنس [AGPL-3.0](./LICENSE).


# مشارکت در توسعه
این ❤️‍🔥 تقدیم به همه‌ی کسایی که در توسعه مرزبان مشارکت می‌کنند! اگر می‌خواهید مشارکت داشته باشید، لطفاً [دستورالعمل‌های مشارکت](CONTRIBUTING.md) ما را بررسی کنید و در صورت تمایل Pull Request ارسال کنید یا یک Issue  باز کنید. همچنین از شما برای پیوستن به گروه [تلگرام](https://t.me/gozargah_marzban) ما برای حمایت یا کمک به راهنمایی استقبال می کنیم.

لطفا اگر امکانش رو دارید، با بررسی [لیست کار ها](https://github.com/gozargah/marzban/issues) به ما در بهبود مرزبان کمک کنید. کمک های شما با آغوش باز پذیرفته میشه.

<p align="center">
با تشکر از همه همکارانی که به بهبود مرزبان کمک کردند:
</p>
<p align="center">
<a href="https://github.com/Gozargah/Marzban/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Gozargah/Marzban" />
</a>
</p>
<p align="center">
  ساخته شده با <a rel="noopener noreferrer" target="_blank" href="https://contrib.rocks">contrib.rocks</a>
</p>

