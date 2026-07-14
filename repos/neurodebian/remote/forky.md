## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:0fba4b4f04c7d525090d88b009fe402ef04adfac1646387950e3a6133626a46f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky` - linux; amd64

```console
$ docker pull neurodebian@sha256:e541774a8ae8c29e9db8916c2dd030fe0fbd66702c6d644b49a82ddad8593554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60355163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85597b86367553fd184628450de73c3d7f869d843744188cd8c7a4a948cd6a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f13a454822f3089040211605bedbd119d716a673282c155ca3d9e2352c9634`  
		Last Modified: Tue, 14 Jul 2026 01:47:19 GMT  
		Size: 11.4 MB (11396905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742051d6e27f7ea2dc0fc93b294c09e0ab805ea7374338450cf718161ebc8e86`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e4a808543a9d59404ce526d123f644c9c73ad677f07b4f531f02c3fcb30237`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4da09d83bcd8cb99a0958c00303b0738c1f1dd17207bf301352bccd48b36579`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 90.0 KB (90023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:375509c27cc2b396af55c84d6d1c07883ec708e7a465d524ece08259c9e43290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c6097bd0c08f31f59d3cb8b64c1e855195f6b7c013bd4d8986b37b1dbe7518`

```dockerfile
```

-	Layers:
	-	`sha256:663a93d592e745f2bc09175bde9e44fdcbb89ed7ac18f1938098cdd5d1d39ffe`  
		Last Modified: Tue, 14 Jul 2026 01:47:19 GMT  
		Size: 3.6 MB (3558591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbac11c8adfac262ed27eebe65e23303ac493e28ce14d733f52b794d12fa08d4`  
		Last Modified: Tue, 14 Jul 2026 01:47:18 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:6cc33ebed78cf1fc3017ef761067669e44057e6fdd80cb810e377f1102801a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59954366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4be4ae37f69d7ea82d64e3682fa2a448f9b0db3c0b56e075f2064ef27fc9dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:48:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f5991d5bb2fa21186c9152bf0a9fa1c9c73892f68235c440c9967628fa5ecac9`  
		Last Modified: Wed, 24 Jun 2026 00:27:35 GMT  
		Size: 48.8 MB (48768712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2e1e0329984e9b822dec196fa02c3f7a9d106aa5c0489947abec911cfd14e4`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 11.1 MB (11092781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dad5cbd40d36b7dcba1ff82ceceee53b573a3e3141c6f551b72a507381a7a94`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05aaafa5adc8240521644a38d840cd8692076f1b2c5bf9ce510dd80143c7fa08`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5d1d43ce00fac375577f4758cc0413758cf478f194088cde6359150fad6ad4`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 90.0 KB (89967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6ac970a8de6aa62364d6fd17a12c5c90baed42c57d06fea34550d68a39b0282a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3578083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f015e7a47414d606ad5d4a8a6a3617becbe4681c5988c8f57ba80b2efd5c3c2`

```dockerfile
```

-	Layers:
	-	`sha256:37c282c3de9c5901577cf393ee1e753aaf1d6e0c3e58cd31df53dc5f88220215`  
		Last Modified: Wed, 24 Jun 2026 01:48:56 GMT  
		Size: 3.6 MB (3564026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9e1f4f7e4e3c58d3df4e5f30031464cd5e851de49e450f6ef7a9da1db59e8a4`  
		Last Modified: Wed, 24 Jun 2026 01:48:55 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:4f4f985c8cbfcab36b13efe05570cc679b7c5dc684966fe3fe6beaf84d31e55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61770724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734c0c5e840d915423cbb9d28000271df768d38d3b5c5a27b1eb6c971d936f2b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:45:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9b65e2e922e5570b1d72c057efc4f398b0b14051ad2a0b581d6669e50195e288`  
		Last Modified: Wed, 24 Jun 2026 00:28:28 GMT  
		Size: 50.1 MB (50051032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf69c87ba5a31526738f4bbb7ed287a0375e1c1136867a2d7d2a0bb94a9ada`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 11.6 MB (11627159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba245f059908d44ec77c0e21504512059f4cc111e10982a7426e4c4cac7070db`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfaf30e16259de14f4a0c86a7ac6c97405a8bf6938495310b75edcb1ec09803`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9bfa0db416ded583d48e9a1edeb92958432bfe1ab81594b0f79fcd1b2f2da6`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 89.6 KB (89626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d7b84a45695921e1d7a30de6d86a08d841360199c690ee0724564c14f762e509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3571179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea0b22104fd8ff7b8645c5097d632e2ef1b6fbaf5eb8f97269c8bf56307b980`

```dockerfile
```

-	Layers:
	-	`sha256:1e4693fb6eb6f43ee21dc1b4e1483f14eb55e56932bc13104e6af5d266e0aa95`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 3.6 MB (3557275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4626b7ae2ef016f6787da8f0ba3538efad23103181e5fec15a0bb84a6a1be575`  
		Last Modified: Wed, 24 Jun 2026 01:45:42 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json
