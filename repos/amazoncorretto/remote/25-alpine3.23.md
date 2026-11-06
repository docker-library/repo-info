## `amazoncorretto:25-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:9a687aae4a7b816972bf93cfe2f8a5914004bdcce632739f128354f253a381c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:de5fed896be28acd163ad4e5a6facdb094233801308066a7e6f45336b3f2a0b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185346701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3a5694ca91c0f5ef0de5e6d3d15010c85faff3d5371c1513792b30e3b3d156`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:05 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:14:05 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:05 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0efe3eba87b180a4396846bc34cc9c755a488f4da83ada88309f021b39d0ba`  
		Last Modified: Thu, 05 Nov 2026 19:14:26 GMT  
		Size: 181.5 MB (181494112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8201ccaa861d006e2e564fdd896b1eade47a757e9df9d700da374f23f856851e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.9 KB (600874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c027dacc02aaf1f324e3de4c3780001f8120052d580c291a6174ca758179a0`

```dockerfile
```

-	Layers:
	-	`sha256:30f1b786d97bf741cf8c84db648d0999915347d203652fa0617a81545cb4c1f1`  
		Last Modified: Thu, 05 Nov 2026 19:14:22 GMT  
		Size: 591.5 KB (591502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08b972cfdfca6a246f31aa29f2bcc27b157350e68c25dc7e878bfd63540362b9`  
		Last Modified: Thu, 05 Nov 2026 19:14:22 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d2c3c35f0435c56b52499eedc23849dc73ba54554c0bfa16a7e7a2dfadd4f824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183268004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109b562212fd7f96d7afe0131f21260a0db47f3cc4e7f30b67811f7284a89661`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:57 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:09:57 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c045a7df6ae1f4f6a6bf5606268a59844781ff0cdcfeb7df6212f5d67214f2be`  
		Last Modified: Thu, 05 Nov 2026 19:10:18 GMT  
		Size: 179.1 MB (179077783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8d72853e8266c0ba7f5312306232ecad5707924eaa209651512dcea06643fcc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0492d2b25c9e662224a937e518e2264abc46e0ffb01ce7e81dc5a07e1525d8`

```dockerfile
```

-	Layers:
	-	`sha256:319bdeb470a9650dd02855fe6ac193d6c5769b5c3426d8fed10c3d97eb2a7359`  
		Last Modified: Thu, 05 Nov 2026 19:10:14 GMT  
		Size: 590.3 KB (590268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a7668f66c1bba78192bbaa08b0a3ae1272ae744e7006883809eaaf7cca5b509`  
		Last Modified: Thu, 05 Nov 2026 19:10:14 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
