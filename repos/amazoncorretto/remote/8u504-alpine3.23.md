## `amazoncorretto:8u504-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:d179980dad50986a5b53d3ecccd4824d900e1f134093e57dba0d86a66a0d9adc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a5cd2bae1ff2735410c4ba019ed178764edfb67e6a6330114002c637c58971ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104675608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1d96a18bca1db8d122bd2e348761f9eb15f8c1dfbfce0ff20210d8d808c4c8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:08 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:36:08 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:36:08 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:36:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:36:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abffc358004c17d8e0806b789d7defd02afb87015c3b3dfb34121e2b085d127`  
		Last Modified: Mon, 05 Oct 2026 21:36:21 GMT  
		Size: 100.8 MB (100827101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a3f8099b5cb59f6003ae906c829b2e960a78fda5746a00944d7a7294efd3d9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573c870286b0bd86c8da6c8acb6ef186d79586c33733f93a2eb5858ba5ba3085`

```dockerfile
```

-	Layers:
	-	`sha256:a12b11371cdf168ceb22ecf32b144264d3f3edd7d7fdcc6a1dacb26218619ea2`  
		Last Modified: Mon, 05 Oct 2026 21:36:19 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:559d09a07b3fefba0f42486e3b692e3ddd9e7ee7ebd47f5b5383358250f76e0f`  
		Last Modified: Mon, 05 Oct 2026 21:36:19 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d44db3e283fff05fd3b43dfe13bd861c476d5dbabd8882af5f89aef04e818101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104848888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66077c7454f0e5b7b15403b7134391f944beb13704b09e6e217c9057c9d55fb4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:51 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:51 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:51 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:41:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762b762ecdceab29c214740106f1993abe0037630afbe6fcc1b2df53a5b2c538`  
		Last Modified: Mon, 05 Oct 2026 21:42:05 GMT  
		Size: 100.7 MB (100662832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:62bd806cfde40e07202a0f5b0f8305a36327539ebe0ba1ac2d80dc1be04a8635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1a4100993572f780c573b19acbce7561a9623d39c322151c958ecab614ffa0`

```dockerfile
```

-	Layers:
	-	`sha256:c70104710f138b0949269ac2e1c27e839db8537fc68a657ec410bdd6ae092bad`  
		Last Modified: Mon, 05 Oct 2026 21:42:03 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e04dc0ca24197afd727b2c6af9068238b5baa6480b3f1b9f316494d92877aa7`  
		Last Modified: Mon, 05 Oct 2026 21:42:03 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
