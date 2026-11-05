## `amazoncorretto:8u512-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:0dfcb68d17e00689cb975ef3fd3670a6ed9ab7ab9a107e1f6d236ef1e8083abd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a94e9c1ab7f62064f30d862f738f4d8cf347fa9e782b8966a660cb592b60982e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104718372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107513eb410038b6bbffff6411b88085415b1c3f09e609d0a0a11d24ae7f84a1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:09 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:09 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:09 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db97089e58e8f5aa1cd0b3ca9a89ff575788aad1b75ad21555146e288c856ed0`  
		Last Modified: Thu, 05 Nov 2026 19:12:24 GMT  
		Size: 100.9 MB (100865783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:143b52b1e98668fcc0998427fb2eee05ff28dbe2ff365ce60ac6cd6c302b4d55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f11c713c54778e2fe47f924cbe1e591fdbc272a54dd34f5ae384bcbc9797f7e`

```dockerfile
```

-	Layers:
	-	`sha256:a892000ce27d3487bf653017ea7f8ba11d7facd08881b459c091f9487fc59829`  
		Last Modified: Thu, 05 Nov 2026 19:12:21 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4197ee65900cfc4a23d64585d2d356a54d770214fd84e4f6052e231db3f3ef25`  
		Last Modified: Thu, 05 Nov 2026 19:12:21 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7f9f15dfef03347509ecbefff5406c846649f349dfa100363f2a853ee59ee5b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104884044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29813303260c1e0b208e663214a7e9a73fdc819acdb0709eabb2891f4a55dc77`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:59 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:59 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:59 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a1a9981af65a0f460fca6180c4ff82aaa0e895030a5af5e0ac93b1db230e40`  
		Last Modified: Tue, 27 Oct 2026 16:40:13 GMT  
		Size: 100.7 MB (100694550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4ce265474d6608556742380b6afa0a862fc8a0d0a1794c9ad61e4e8377c4d4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139334b5562d2ded1aca9376ad7575d385023948297dbebb47a805f2ce3c1d64`

```dockerfile
```

-	Layers:
	-	`sha256:bf3ce5f2c229c2a45c17a3a3561d32abb42b1de915a38d7ef40f473cb78bc90e`  
		Last Modified: Tue, 27 Oct 2026 16:40:10 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4d75890320e1c3d433061c3662b653499bda27eec1e21db18082ec408aa568c`  
		Last Modified: Tue, 27 Oct 2026 16:40:10 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
