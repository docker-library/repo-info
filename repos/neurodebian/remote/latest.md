## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:4521313bfbf4b0dae3acd4e90b8fc5eb547d7df6b733dcfd89de1be8693e861b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:latest` - linux; amd64

```console
$ docker pull neurodebian@sha256:595de98a61bc3a10105fa37f8230ced6be2924ea1b082b6d26376db4ee3ed314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59799960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d896af0f48a8e9dea38632738a4cb718c8cc570d4fecbc1796f296209b4b91`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24fc13655134322c0996718be0a5cac581aa89714abc65350d39b2465129ec3`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 10.3 MB (10294126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39bd95e3f175172ff738c788039fae7bd53b5a7d8abc4d0ee5ac762ed2b417`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1990b2e8394b14f4a17355800c292687040490ef8dae50ed025a62dcfa27974`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463a6b46c98cfa330b19ae2bac467cd36d4ebd4bbb2cc5abbc13734414763493`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 90.4 KB (90421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ab05577a7b3bc12e2c08b3529963a38babe7987c1147e4a82f942ff32028b4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5381d3ba6e051a89c524b386d79b0a10fd20f73e61212bf616fd103958b9`

```dockerfile
```

-	Layers:
	-	`sha256:0fc0afe939212026cad89b81a0d914a3293d7d73c7f4d18eb72b99aaa92c252b`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3a63805892a02fe782bbb13515f30baf40bc0a90592e796bfc9fdefaba88bb0`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:65e976905d534185e5486a6e2d827e74bd93f8ea2fef842a742c249bbe13b44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59951553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24db7fb3397ed150cb4ae56b288a1222af54fc1849645719b7f4ae6a12d60c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9586e72c5cbc08b2ea68ab48770de717e3859d9a970123cbade10cada209ae`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 10.1 MB (10078943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef592238382ba05f22aad816ee181f5a307ec921e4accb3d8923f15ed9b524e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdea2c75f82792f649bbc79d16385d34d4f06008c2dde9cae63fef7228b5669e`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f855e0489568369e2f2018d41700d1b770ec93522ad9bebeea314819a25cf95b`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 91.1 KB (91097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9986bcaa852c7bc7a1666712423892febd8d766208c09ee730b196b6c520fe7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e71d331b142b5f2f69e9337e34998b78e5c36f4572bbc9c9d383f99f0e90c85`

```dockerfile
```

-	Layers:
	-	`sha256:0f1716fbe999d458a32b32147267ccb8a86f80e1815107a96128013d00892c25`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914b96899711c5d0b0583527e39d1de6d38f0ac23134a9e27118ec9e0ee1b631`  
		Last Modified: Thu, 05 Nov 2026 07:45:04 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:b1063aac701b5271732a098b85d139b7ce48d678239f07aae6691a8b15e2f81a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4dc764216fa091d8acb22aa9a920d8c126ab35fb1e89029e4c4ed944742247`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262aade66fa34a7e47cec59830c6824ffb7b94baf12063e1e331dac407d26f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 10.5 MB (10468167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3146499573d8b6425094ed7d59f6eb31f40652a2c44166bdbcaeeef13d58a639`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d432c3309d7bc01fff1f993d893f13ec7a69e0869a0b9acd3a48e0124ae24c82`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1e59276ec2c43c864baca06f294d986a1dbea12ce9b947f155942a8b227106`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 90.8 KB (90802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a2444a7541c64b09a0751538b34c6b5b8a022e27b17aa565f7af2c9d695a0c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a73ecb17fd2ecc120907717aca05bde57f40b614182e10521618001a15253`

```dockerfile
```

-	Layers:
	-	`sha256:5f476406e667c718f4a9e961aebaa3022155f2a52d0c1bc2da05922013e194dd`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ba93139273fa1a95db0e60efcc8a05084cf7a00a4b183f19f46d70b616456ca`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json
