## `amazoncorretto:8-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:2f5d10895698e32a3becbe5d17fa8814fd17572a7698c5094cfa5008819f061e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a0661c658bf8f4147002f5c2f902f594a15e59ae51f938f70e285fafe24f3b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45690229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac65e8cb200be8562281ff62146f725bdd6f01e4331f1943c1e97b280939120`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:50 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:50 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591d7981a3963ce07e6fe7d7e4ec2213000d5483361d113e3b6386d6ccf64e40`  
		Last Modified: Wed, 18 Nov 2026 02:45:59 GMT  
		Size: 41.8 MB (41837640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:602708a4ecca15a57940bdc87a81dd11a83bdd98756392a76953104d707f9100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 KB (195865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db45c3d34ab81e466e2d0f61208f207741bbce55681db9d538585fe5e1367205`

```dockerfile
```

-	Layers:
	-	`sha256:5a40636d84c9b957fe6f39d8599eb32252804a3b124d4b583c9cf5463729b834`  
		Last Modified: Wed, 18 Nov 2026 02:45:58 GMT  
		Size: 187.2 KB (187211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52c8cf74ac99dcd23cd533ff1ddcfaaa8a1d12fbb0743e4288154020fa9f05d9`  
		Last Modified: Wed, 18 Nov 2026 02:45:58 GMT  
		Size: 8.7 KB (8654 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:21d5f55fa3a82aec45c0c4574c0839e356fb34c96b9576e858cdcf92ffa64a08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45781317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ae38c518e3d0df60d8bcb436f2f4efb3cf7ca30d8b51ce2353148ca259f9ef`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:01 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:46:01 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:01 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa036fb71f1eaddd2297cb3b6c7f99dcbec96953c8a77f6b9f051039026689cd`  
		Last Modified: Wed, 18 Nov 2026 02:46:12 GMT  
		Size: 41.6 MB (41591096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:24db700ada5e23b90dbf63bb86cbc4277c2e9495781670c37d75f0ff42f14e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a31693d1f676ef1cc2bc5ae9420c2f2724c59c985809c7f113c884a54c92339`

```dockerfile
```

-	Layers:
	-	`sha256:5f70c9490a0017194d6032c483005bedc04b83fa426a57f51fa9ef3cbd939adf`  
		Last Modified: Wed, 18 Nov 2026 02:46:11 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:317cd1d60095ed145189bfc7b7071eafeea960f948b8558e165c2edd5ccb5d13`  
		Last Modified: Wed, 18 Nov 2026 02:46:10 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
