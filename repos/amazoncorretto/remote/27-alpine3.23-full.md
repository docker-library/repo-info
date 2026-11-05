## `amazoncorretto:27-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:0d2a657decdbd937b387885b4025f43a477f120e7ae948f7d36458111af2ca10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aaf0a70773eb91f62e389a1d9d4ef64c4708eb0c135b035f78ff4720940f6c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187260687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f18804c6cfa42dd9530b2828e3ed6a0bd06ed6bcc39e344df5ac4f152c1c1fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:36 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:14:36 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:36 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bba1f16df54f6480ebfe4c89d2301a346af9ee6adbe2f8299d7812cc6226f5`  
		Last Modified: Thu, 05 Nov 2026 19:14:56 GMT  
		Size: 183.4 MB (183408098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:42dfd3c64b84a50e6c1051d91a9177111cfc05334d96624ed0458ec28177fe8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 KB (586438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0d690b48c11394723c7b6a78a6c8430af00827795bf9235d0825775088f239`

```dockerfile
```

-	Layers:
	-	`sha256:07ce6ba13feefb4f6c49d24563124237fecaada69037417c8c63c39536d0347d`  
		Last Modified: Thu, 05 Nov 2026 19:14:53 GMT  
		Size: 577.1 KB (577066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a95da8205528aa07319dea7dfd09e794e09b12a644a1aacfb0171032413857d`  
		Last Modified: Thu, 05 Nov 2026 19:14:53 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:49e0a4f84310d41ba0db4ed8427ed26be077cb6072a1e7c34832652af61f7d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185235457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a70de424e53e696ea074477dbe16d038fb7f5cf64dc2757c04c74cb6bae701f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:25 GMT
ARG version=27.0.1.0.11
# Tue, 27 Oct 2026 16:41:25 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:25 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46954f126fe2272409027ddf727f2281730c6295e17dd7002d169fc75e55337e`  
		Last Modified: Tue, 27 Oct 2026 16:41:46 GMT  
		Size: 181.0 MB (181045963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5ee831c1be2b7631ffbf69624c70aafeabaaea35441dad785e1cd6c8dbfe1b83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.3 KB (585308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7da2e1d29d7c79b1c0afbf60195be72acf8996a32a58d2dde768af61974341`

```dockerfile
```

-	Layers:
	-	`sha256:ee8a9f7c3a6007deb1e8f817e968ecfb9a6288e4ea8ce44f0fdab0f34bf2c8d7`  
		Last Modified: Tue, 27 Oct 2026 16:41:42 GMT  
		Size: 575.8 KB (575832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9e15ed0d590f2f5591da798bb9a03a7f88c62e6b670828aa7c255e849c9c769`  
		Last Modified: Tue, 27 Oct 2026 16:41:42 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
