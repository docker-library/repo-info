## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:096d073240d8b13414a0780ecb8d3a1a2944c2197d78d74767232e7171f514a7
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
$ docker pull rethinkdb@sha256:d844ccdc2f836763f73f4ac9a59ce8318d43346f5fd354b45ff72a3bd924344d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48050318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6820d3e05af72769f2902b6f1418459082a0eced78d5c8c65e5d5a5408d3f0ec`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:43:36 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:43:37 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 25 Aug 2026 00:43:42 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 25 Aug 2026 00:43:42 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:43:42 GMT
VOLUME [/data]
# Tue, 25 Aug 2026 00:43:42 GMT
WORKDIR /data
# Tue, 25 Aug 2026 00:43:42 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Aug 2026 00:43:42 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c555c06c42b2be36ebbf703a0d8353eec4efce8df61803b042081733378703`  
		Last Modified: Tue, 25 Aug 2026 00:43:49 GMT  
		Size: 9.8 MB (9821719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e197ae23756b453d515cce44a3f169b400dcdd810ddac100dcbf910821649d`  
		Last Modified: Tue, 25 Aug 2026 00:43:49 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b869f2d443d65c8ae57425eebd1b097c544076325120899b6eaad908a48814e5`  
		Last Modified: Tue, 25 Aug 2026 00:43:49 GMT  
		Size: 10.0 MB (9993181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccefa28b91b2254428edb6f9994dc2a3af7f319ab90af6d3835f1f286cf20b3`  
		Last Modified: Tue, 25 Aug 2026 00:43:49 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:63f3baaa2bf404c0627c2ffbec73ecfeba797f579ce76fdaf374202374535daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f826cd384f6233d4a6c1b849a7aa910b43c2e67d932af34c1694f7c8d167e508`

```dockerfile
```

-	Layers:
	-	`sha256:fbc3d6a445617a3f8587eed941735ede3b9a106cee700aabc97538443e55f7ab`  
		Last Modified: Tue, 25 Aug 2026 00:43:49 GMT  
		Size: 2.8 MB (2790357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1abfd3b72a50a19cfe3112dbbcb70289dbae53e0f71fda187c34e6ef0cc503af`  
		Last Modified: Tue, 25 Aug 2026 00:43:49 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:latest` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:bec2536d9b2e0912da6f0a8eb40d4d7be23c8a0442f3a634e05fbf38efc3c6c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47131548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f9eb742a92fc31dc7b96aaf65e4c1058e3125619abcf6e53fde8339936d2b1`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:45:56 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:45:57 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 25 Aug 2026 00:46:03 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 25 Aug 2026 00:46:03 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:03 GMT
VOLUME [/data]
# Tue, 25 Aug 2026 00:46:03 GMT
WORKDIR /data
# Tue, 25 Aug 2026 00:46:03 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Aug 2026 00:46:03 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53210bd6271de7411cf7b95783a5f6b09cf3667ec596248862e0836573bc969f`  
		Last Modified: Tue, 25 Aug 2026 00:46:10 GMT  
		Size: 9.6 MB (9644090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c4f289f98c79a25d8c37cadd757a88cd7189296e2a6cdb45ea69446a89606a`  
		Last Modified: Tue, 25 Aug 2026 00:46:10 GMT  
		Size: 2.7 KB (2666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac384f0647501276149ec296e912b9b7c963f466ff18d09cefc7d16375de6e2`  
		Last Modified: Tue, 25 Aug 2026 00:46:10 GMT  
		Size: 9.4 MB (9367409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4d1e6e413ade886dc1e613687fea1d278200c9b7e931fdddd45b23b32ac016`  
		Last Modified: Tue, 25 Aug 2026 00:46:10 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:55ff25add24c735848b2dfac14c57875761a7f654924a0da6b7151fd26ee4aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2804278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9525ae5a43cf58f1d47976d6f6654fecc1c249a75ab089cbf16f6a4b38ee8ac7`

```dockerfile
```

-	Layers:
	-	`sha256:545f80904e804479d70a227f47809d81c43abaab7a01d1bbe13c21b67bab529e`  
		Last Modified: Tue, 25 Aug 2026 00:46:10 GMT  
		Size: 2.8 MB (2790692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2b78fc1d4b1180c8a033661b4cc4381650e40c25c9166f5faa06623c74ed3b9`  
		Last Modified: Tue, 25 Aug 2026 00:46:10 GMT  
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
