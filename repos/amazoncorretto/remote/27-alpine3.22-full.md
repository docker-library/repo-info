## `amazoncorretto:27-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:61e4a3e3bc52431465dba194ea3efe034251f2b51c1bb6e8e2cafe39481a56ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d1f4773ff9fb2b8416e56136b0e99de12599c7533b8d393122a731821bf0f052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187224139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3363cf680cd0a17c91d4ab2a1b18c3091ed4166234219881c8c6046f6c19cf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:35:27 GMT
ARG version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:27 GMT
# ARGS: version=27.0.1.1.4
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:35:27 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:35:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bfbedce2238ab6a22a685f7c1c2d9e65b340d4e2989c9bd637b20b64b1b63f`  
		Last Modified: Tue, 17 Nov 2026 21:35:49 GMT  
		Size: 183.4 MB (183429764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:76119e94cf435f9509b07b0098672f5e0cbb6dd64b9f10f8cff164ff6427a6e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.7 KB (587723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104696162b0ae3bfc89f9bdf7e7e0b640a84a9ba9d18393da5b7188792065016`

```dockerfile
```

-	Layers:
	-	`sha256:2d5d797d50ec49a59f880eca1079f984606e4a4a3e28f42e1b17d70e9bfe5ca6`  
		Last Modified: Tue, 17 Nov 2026 21:35:45 GMT  
		Size: 578.4 KB (578352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1da6981b308233d0082eb0d165a071159ffafb62f90baaa87e396df1ee3b05a8`  
		Last Modified: Tue, 17 Nov 2026 21:35:45 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b0490b18aec55a2b135efb9a72908a5ba51378486bfcc580356e7c80f0e13d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185200233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df363c64d9f2935207d4e24253951f77bfcc1b3e8054f0392338060d03392470`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:35:32 GMT
ARG version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:32 GMT
# ARGS: version=27.0.1.1.4
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:35:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:35:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4998ca32fc27a6c321fa86ebccde6e9c7b785804d9f21b02a7f083f10af013`  
		Last Modified: Tue, 17 Nov 2026 21:35:53 GMT  
		Size: 181.1 MB (181072848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a872164b09a1f979815bfd5d3de1d4f55da438d43cc784fd9ce62fafca09d686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.2 KB (587242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d993b814417f6e14fda684ae9af9812fcd9d2e68b95110b84850312a26b37cca`

```dockerfile
```

-	Layers:
	-	`sha256:93c2fb3acbe6d4fdd2ba2216672dab6bb0edbfb4ac2957dbebadf0117a4c73de`  
		Last Modified: Tue, 17 Nov 2026 21:35:50 GMT  
		Size: 577.8 KB (577768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:315e9f41b8ec7747f2b072a040d2c177d30c5683ea07d522a5a0293a505a754e`  
		Last Modified: Tue, 17 Nov 2026 21:35:50 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json
