## `amazoncorretto:8-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:e52fbb3c36a06efa7b0cca62a9200c1de9b95ded40b4eec55d7d81c21fdf79c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23` - linux; amd64

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

### `amazoncorretto:8-alpine3.23` - unknown; unknown

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

### `amazoncorretto:8-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:38d2caa76f05315b24cb48a69c2875c56819ecb6a159f4f34fa60ada3edb82d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104884754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b565f55716b9436db0cae98878034b6947d10785e0b681f9e8ca0849ebaab90`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:01 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:08:01 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df44ce2a2eec203b1bb3b688ab72f19ebef1b2de5036bbd49c070ffc86f3760`  
		Last Modified: Thu, 05 Nov 2026 19:08:15 GMT  
		Size: 100.7 MB (100694533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:40d4e4a3ad0a98c95d0fe13c44e3c81a64970d9763ddc9dbf91a8fd8b86da20d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfab1cc4604e7b1ebc025f4c7ded318fc4cabde743d9c7c626acdcd99c1f2b29`

```dockerfile
```

-	Layers:
	-	`sha256:f58f4d1d650684199766d12cc8e97747cbc8f467ddcd9f1a31691fa1af983d39`  
		Last Modified: Thu, 05 Nov 2026 19:08:12 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a3c941db7167b73940d2330b2fae795311067fd1d73b32d602457ca7c5aa2d`  
		Last Modified: Thu, 05 Nov 2026 19:08:12 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
