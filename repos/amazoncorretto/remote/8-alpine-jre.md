## `amazoncorretto:8-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:020ebc753f2dfb97c024b625b7e6e5815899feefd048a586572bb86026ceb4fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2bae8f68cff0820b72ebc2080d0d1c0e95219e90584894158a255a03ece2cbeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45691410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02853dc317b19cfc37a397f84f678a15379d5c628ed3541a7b8b63712fc2f40f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:57 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:57 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892fee6f6aa44143f902af3e1c4ec07eab16385fdf81ce6b1ae582c496586bc0`  
		Last Modified: Wed, 18 Nov 2026 02:46:07 GMT  
		Size: 41.8 MB (41837737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:94c22624ed063a37a23cd8d79d4c8df208f4bfea20f0fabad39015fb48ee0c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b94fb01452b69d5b839d61ff28b2a18aaf363312255de497bacddf466bdc535`

```dockerfile
```

-	Layers:
	-	`sha256:011d65e3c4694f67e1c16c4c396c035eae2a0e8e5a161b7f7b480056d29da406`  
		Last Modified: Wed, 18 Nov 2026 02:46:05 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701969ffd2d48c6a7b2ca9253fb9cbbd0b722f882ce5708f999ff595b254e61`  
		Last Modified: Wed, 18 Nov 2026 02:46:05 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8d7bf77860d4f5b95ede3d55a75e2fd5e3c29789cb3ff23f623d9a693b766730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45781704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e212865e854764ec72158821ae0e8d3b435b89e55138e83f1f73b0aea1668ce0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:09 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:46:09 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:09 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc7268da5f0ceda74e13a524900bdc3415e3f842566437c9272c4eb750646cb`  
		Last Modified: Wed, 18 Nov 2026 02:46:19 GMT  
		Size: 41.6 MB (41591109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:03bb19dde85b30ef7b23d35edb7c9c94e8708655465e4c7b31099a66b14c629f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74680117d39bb488e2817d812f8026cf1d5a611a5e6f194e205e7e605dfd48d0`

```dockerfile
```

-	Layers:
	-	`sha256:5229fbb4257878a6b5662fa65859b34ecdff07f969446a67b0d3068f2e2f0d61`  
		Last Modified: Wed, 18 Nov 2026 02:46:18 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c5dd7154ed0a8ee84d57e215f2d823efb0dd01462c12c53bc5e468c3bb553b6`  
		Last Modified: Wed, 18 Nov 2026 02:46:18 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
