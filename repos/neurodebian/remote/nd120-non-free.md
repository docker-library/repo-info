## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:6ae1d5f5bb732559c1a10807139773fca048ea2203a0b8843a19348a400602ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd120-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:a1cb2aa96523a78ed35991112115a6d402e7916fdf4ee010e85f5c06565163d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d402e2c0346af1bb26926d3f399b6aab53c2382c86bc2423acbd9dfdff474c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bb8459869ec6e3955d6415a65c4dd063d5281ce2c130e8f23ccebc0a023fc3`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 11.3 MB (11273524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bceb97d5b48caac32ae6e23db0d7e6a9efe075d67bd5b7b7945e8603447bf40c`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a006ef7289ea2e5aa9e3ffb8f9768e25c462cf9097214dc3d3ddf38ad11f28d`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7586680fc8fce5d7f90e316effc60ea3496c82f7dd336c046b30b04007bf83d5`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 93.4 KB (93383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051c03efdef6b4ea5c1a73b2e5b9143e769e744a9f6e5278c40f0986cd925b35`  
		Last Modified: Tue, 14 Jul 2026 01:47:14 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1b74b0aed9a9c498c921c4f0a3e9275aed6f99047e1c9fae4485f7078a3d37b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce0ce94d6700e135ab9e6cd2903b3ef8c0e523319df8f1baf613098065dc64b`

```dockerfile
```

-	Layers:
	-	`sha256:07b0f23f871b015fcb2e541483a31c5691a2c83e4daf5bb26472db3bfb2d68c2`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db2cc8a264f88f047caf2561ad253a13e3eb4b0fcda6ce148e9c848f9d5b6a8`  
		Last Modified: Tue, 14 Jul 2026 01:47:13 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ff2802bfadec3407144f37eba255b77f364237da31d8b22943e71ceff1867e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59738341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725dd8aa12fb0161049b76fff8d404d979ed5e34835eb7864a6af7a0e296205f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57f8b6430338bdbd253e67f1211778a3249bc19b3d337b29b7d77f4bd2100a`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 11.3 MB (11252936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17449b4c84b5bfdafe2b666f8f92ea0c7a17ccbd33d13c2eb66b2ad76f4208a`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef7adcf92c1f89331058f54432cd0916e434637f5350b994de71cf0543c9da3`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c85c01505091d0017cfc26b5b19103aa4f743f49d33df9be6dbc15b60b7a0a`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 93.6 KB (93580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726b6a07115232dfe8c8c8bbeddec00e69552ac6b8ce225312398ab28bb6a034`  
		Last Modified: Wed, 24 Jun 2026 01:48:40 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3575ca857707abba734a2542b5d9cdbd56852ad914143ee1ad22f9d070fd2d03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e6ded0e3c7666debc96f5f36c1eaf6ba4d6657482c4e1b3213b5cc3fbbc87f`

```dockerfile
```

-	Layers:
	-	`sha256:d681fd95442c46985aa5c0598999538e5eaf3e6a55544eaccab0f08e5e8a86db`  
		Last Modified: Wed, 24 Jun 2026 01:48:39 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa81045ba757e5ec483d14cf83519eb057221ffa30eabbb18299a536022e0476`  
		Last Modified: Wed, 24 Jun 2026 01:48:38 GMT  
		Size: 16.1 KB (16131 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a8b501055f1ee1088e65d5a8e82e588192c54432ad10ca5846c7afcc93fd2824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61280522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495f2e3d7f18ff4a2a76585708f8bb4c60d8b2672e5e98bc3756fcf411afd7c3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de7c6a2bc43aab7bba927950ce09da24387a65116705f1c1905ebf8a51d1776`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 11.7 MB (11693079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cb973994433f14f5335696271a5bce15ebcc853e5d89b15b07c8b38cff33b0`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee857f661b0cdd38b84f2718aa65773e71cb5558684ac802533e984748695c94`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a76d5905f55f0bdaf6a41fdcc8551b194ad190fd0a589ad5dd868056703bb2b`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 93.4 KB (93445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b41b61def5de9a066396aeb093d8d960241812a072992ffb9e9cac423dc2bb`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1f4e0e1f19b016a6a7369a0861be92ce0a9bc5608eef11a8d5e589b766e0e5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011423bf913ebe70f934c3bef6e76d8b8d7071dba083236a48f3cad9c36394b3`

```dockerfile
```

-	Layers:
	-	`sha256:8d6655f756adb753001781a23b4bfd1975f332d1b4e7c4e4bcdbb4a16330ced6`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49454077d2a18b47b0b90e5b2eb932a8d4f9c4e915c402fcdd25b0940dc95a5b`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json
