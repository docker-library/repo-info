## `amazoncorretto:8-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:b128ef24726f85189b21f2d0d5c4d96168a5a72f0773c3e474ff35f4355b1705
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5b950bbd5e0bd601262554d27d31e8dc61f64766341a8cbf74eee03e8b4321f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45689902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c67c9cec36636d8092b934666643c96e01f1a67dd79c4035392930fab56024a4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:29 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:29 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56215c07c8313f08f579e23684fb0ec1dc54de739691e617d8bba56ed13207d9`  
		Last Modified: Fri, 23 Oct 2026 18:07:40 GMT  
		Size: 41.8 MB (41837675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9dd2cb3a13e5242e386777e490a3da0e81811114eb7e3aa876d5283a47f856ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 KB (195867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff4799ff891581f966d6d04019a5a7f557caf527d9c2138f5bc425ba5b64dc`

```dockerfile
```

-	Layers:
	-	`sha256:5a23482d526b081e13d3f834936df45e398bb0f40e9ec66d7da0873446911ff7`  
		Last Modified: Fri, 23 Oct 2026 18:07:39 GMT  
		Size: 187.2 KB (187211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c548bc315a984f0fcf7d65cfed2cffca76740e975cdec0ee7ca5a48311a4ccd`  
		Last Modified: Fri, 23 Oct 2026 18:07:38 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:431c16014e5b482cd742b1e8c4dfe9dcdcfae4af86ca34b098b2c40bb4ea8c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45776852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77023563afac8991008c70c7a959e0d620df9cd261885d78152c2a31a85a6b0d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:37 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:37 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:37 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2e7e0200b4f7d6b92aefe1859f0e536c99a888c5c5aa797c6bb4f227e4d954`  
		Last Modified: Fri, 23 Oct 2026 18:06:47 GMT  
		Size: 41.6 MB (41587358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ce9453f131642e36933eb261e61950f6a9f3eaf9aa8f6d946326f13504bed28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58280b2b50ed93535042ec4b655c978ce9119d9f15575c78f1b3aad1b95cb189`

```dockerfile
```

-	Layers:
	-	`sha256:9652a4330f2057995e937fb3ccde804b2d049e4ad2bf158360c3fa5120c36570`  
		Last Modified: Fri, 23 Oct 2026 18:06:46 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1750baa4029b6980b0740b50c040d7ce13607c7fb8edfbc466037fb2bf4f45f`  
		Last Modified: Fri, 23 Oct 2026 18:06:46 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
