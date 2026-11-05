## `rethinkdb:2-bookworm-slim`

```console
$ docker pull rethinkdb@sha256:81ab2da93f66126dbd20580c1720e723111cc9a698ddb1a930ec3bd6cc47f8a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:2-bookworm-slim` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5cc4549e8bcac1a4c2de365720ad0df6261c49979ab20d892ebebf223587c9fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47870237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6d443d1737bbcefa1a7f08b09430d9df519930e36baff78882d0756c4c1d01`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:31:36 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:31:37 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Thu, 05 Nov 2026 07:31:42 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Thu, 05 Nov 2026 07:31:42 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:31:42 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:31:42 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:31:42 GMT
CMD ["rethinkdb" "--bind" "all"]
# Thu, 05 Nov 2026 07:31:42 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebcd6b15fede7d67d5a42134b45a3e1de8c94aa828eb277df68d749b259a9b2`  
		Last Modified: Thu, 05 Nov 2026 07:31:49 GMT  
		Size: 9.6 MB (9626298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c000aa660c8702e61419313f104b16cbecbf87821e4585f7cf979964d69734`  
		Last Modified: Thu, 05 Nov 2026 07:31:48 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538b5e30bc33c31958c11246373ff153d2b7d69b5ea3701871314e579508e54e`  
		Last Modified: Thu, 05 Nov 2026 07:31:49 GMT  
		Size: 10.0 MB (9993192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a91d77efe4231d6e3ca44d87e5b9b16473e12d0b8f5b602aa9f19f5f9d74085`  
		Last Modified: Thu, 05 Nov 2026 07:31:49 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:f24b765c7b5394883bbd00a654312cb2827f02b3d6c023ed23ecc93dc09f9400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c84834fdc7d79924eb60ed4214ca012519031bb36d3fa24858bca9bdcc251b`

```dockerfile
```

-	Layers:
	-	`sha256:6e76345692366cbf00e540f7ed19625d357b968aa506a75d6d8922ac053db4cc`  
		Last Modified: Thu, 05 Nov 2026 07:31:49 GMT  
		Size: 2.8 MB (2789208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d5a52b862d898f4edd3b1e8584ae9e9c004a2ac9962916fa9f78176a7685189`  
		Last Modified: Thu, 05 Nov 2026 07:31:49 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:fa28cdb8f6fcb475e874fec3b49fa325a26328d2669a9faa940b3b111b1a67f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46964815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c588858691803a44a0bcd65e56a1bd38c596052f126988ac50d4404148bdd5c`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:35:07 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:08 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Thu, 05 Nov 2026 07:35:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Thu, 05 Nov 2026 07:35:13 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:13 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:35:13 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:35:13 GMT
CMD ["rethinkdb" "--bind" "all"]
# Thu, 05 Nov 2026 07:35:13 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205f952c58ff07db5f6fdf30d803ac73296f5d9a0632171430ce505ffd504ea3`  
		Last Modified: Thu, 05 Nov 2026 07:35:21 GMT  
		Size: 9.5 MB (9450340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a122354dce4b08467ccc5f270c32a2e34b849901833740d59ba278bcecfc8849`  
		Last Modified: Thu, 05 Nov 2026 07:35:20 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf139895c29e4b4a094567438f3729e31773a401a52fb937d62f7a0c84d52dc`  
		Last Modified: Thu, 05 Nov 2026 07:35:21 GMT  
		Size: 9.4 MB (9367355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e484891dff4009d5fd9f88a16ac50a87a6f981bbc28dd04b51dc453a111de19`  
		Last Modified: Thu, 05 Nov 2026 07:35:20 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:a5368bfbfb66f266c17752128d306ff286d8c07066f0180640d330a1ab131e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ca0e047b33f578bad02edc75368c8db37393813fc5fc4b37496e0ae1848759`

```dockerfile
```

-	Layers:
	-	`sha256:1bef44ab7fce91199854fd4967c3700038ea9987570a91d3f1abe0b88eadc922`  
		Last Modified: Thu, 05 Nov 2026 07:35:21 GMT  
		Size: 2.8 MB (2789543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a3787763ad01c663032245913e9cb18e14e2be01496e92fa35e7d9a904016d`  
		Last Modified: Thu, 05 Nov 2026 07:35:20 GMT  
		Size: 13.6 KB (13585 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2-bookworm-slim` - linux; s390x

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

### `rethinkdb:2-bookworm-slim` - unknown; unknown

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
