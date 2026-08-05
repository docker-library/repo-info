## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:de120f60b86a1a168cc958fd5486ef2e0f75e249ebb2a86cbd69beb494de4ec6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:96d9874d581fd4783a31d111c03c474b73d77e6d0fa80e60af736d2a11605834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48030600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef97992828f4d01ab58008c39e088d059c276306217743edb1106e881d17154`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:38:17 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:18 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 05 Aug 2026 00:38:23 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 05 Aug 2026 00:38:23 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:23 GMT
VOLUME [/data]
# Wed, 05 Aug 2026 00:38:24 GMT
WORKDIR /data
# Wed, 05 Aug 2026 00:38:24 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 05 Aug 2026 00:38:24 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395e82faad9578cb6b16b3be3101335c33508e6f1fe715d517dfd0fd2275df87`  
		Last Modified: Wed, 05 Aug 2026 00:38:31 GMT  
		Size: 9.8 MB (9802074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa0943c36cac80a954ece1ff6f3b441feb4a160aa52051d25bd1c4c17b09efa`  
		Last Modified: Wed, 05 Aug 2026 00:38:31 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374ba805d930d10b34f3fb1b1505e09dbdee8eba2fe26d7abe7e61b810e82bf9`  
		Last Modified: Wed, 05 Aug 2026 00:38:31 GMT  
		Size: 10.0 MB (9993175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9611793d7968ae2679eb7af37e7abbd1a062083aa1f84cc2b13f424d3c92cec`  
		Last Modified: Wed, 05 Aug 2026 00:38:31 GMT  
		Size: 91.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:6f2d39505503f2231e0cc0a251a7b5422a8a5bc2d285c20b88ff8a99451d39a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2798558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46584e532b8326c25f6e3b3beb0a787cef1fe05fdd6f6dccca72715411dcc279`

```dockerfile
```

-	Layers:
	-	`sha256:74937e2389c698fea12b4a6ef36c74c462a962c3df1f912bf3c1288d7a047bee`  
		Last Modified: Wed, 05 Aug 2026 00:38:31 GMT  
		Size: 2.8 MB (2785154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6050254d6841a6158ab7b1b825160004bae67e676f326f4fc9e65c9691e7cc8b`  
		Last Modified: Wed, 05 Aug 2026 00:38:31 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:latest` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:1465a56b4edff43fd17b36c776f2d3afa577cd5a977e9bf1283a6a13075ae527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47117642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0955f657eff07a1ec23f42614befd631c8b622c2efe96edddb68ebee61ca2d8`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:40:25 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:40:26 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 05 Aug 2026 00:40:31 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 05 Aug 2026 00:40:31 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:40:31 GMT
VOLUME [/data]
# Wed, 05 Aug 2026 00:40:31 GMT
WORKDIR /data
# Wed, 05 Aug 2026 00:40:31 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 05 Aug 2026 00:40:31 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f4c9aec64c2dc76b39a5421748b4ffaba1c9a5cc6377c2cb89a295bc1ee432`  
		Last Modified: Wed, 05 Aug 2026 00:40:39 GMT  
		Size: 9.6 MB (9630359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d015f0f1878d171c3f766f7eca76732d6a372ebdf41417189e540d10795aec5`  
		Last Modified: Wed, 05 Aug 2026 00:40:39 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce98229a70e30d5fcfe17b62950828930bda7a96d0470bd6c9e208f41d6f3282`  
		Last Modified: Wed, 05 Aug 2026 00:40:39 GMT  
		Size: 9.4 MB (9367318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c523a3882976835ed3a5b8d6317ddfcaf86924065564081b648292b0c70cd044`  
		Last Modified: Wed, 05 Aug 2026 00:40:39 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:304a9f2cd2c4e97bc87c96a764822f04115f31fe34976f4ae1420cc4a6c6d2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2799075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116d8dd8a6564ffbb9d2ae638cf21dfd3ba89a4c60f0c29bd0044c0d432b2b23`

```dockerfile
```

-	Layers:
	-	`sha256:d1a33094d5d81fc1cf0c54a91abc4be89f58687d237e6b49b775b46ecd82f369`  
		Last Modified: Wed, 05 Aug 2026 00:40:39 GMT  
		Size: 2.8 MB (2785489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bf642559b696cc8887a0a7c0e838b4eb55f03d25dd12860a960c2abc45a7e0a`  
		Last Modified: Wed, 05 Aug 2026 00:40:39 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:latest` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json
