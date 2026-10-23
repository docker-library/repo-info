## `amazoncorretto:17-alpine-full`

```console
$ docker pull amazoncorretto@sha256:58f05fb717dc47e30c6899d5e37b3101fe24581baa0a83f4f23c1556729beb4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9aa6806dcc06094dc7a58a9739214226f6f77145f1ecd70e07fc2e9eac8ae671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153063939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacb2e48bdb52a0a8092dc67e0f87e704942762d3e3bcc29f4045f0effa88c93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:41 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:41 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:41 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f660ecf0dea042781344537795bc970ce39dac92056c7b4d6b48b538f234386`  
		Last Modified: Fri, 23 Oct 2026 18:08:58 GMT  
		Size: 149.2 MB (149210830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d74598c662a688edb4c2cf98ff2787182fa4d84aa6b0cc87dc519672f0aa09be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0aa26211f2b05d35b87b18bb91af9ddaf416cb30033b7968e28b0b180820d6a`

```dockerfile
```

-	Layers:
	-	`sha256:8ffdcfeb8de71411326cfbaa760b01e2be3d5113c79b29b4e1be42d8351b30f1`  
		Last Modified: Fri, 23 Oct 2026 18:08:55 GMT  
		Size: 583.9 KB (583882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd1327a706169edab121d1325db1cdd4c9addd905a48bb9db084cb9cf29b6962`  
		Last Modified: Fri, 23 Oct 2026 18:08:55 GMT  
		Size: 10.7 KB (10686 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7c4caae3e0bfa6fe9c5d37386b7e05a6663ea3b5380d2ffe5917c77b0f02ff25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151885375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d710c27976aa940c6fad0bbc1e08443f5c24adcc467806bb7ae3cede8f8e80`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:39 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:39 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:39 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57a867d7dfdc27ae917938764e61d75ae5463723e297ccf285d0cd4d89bc29a`  
		Last Modified: Fri, 23 Oct 2026 18:08:57 GMT  
		Size: 147.7 MB (147694887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a1e3021cd58079b0bd910b1dde6e532a2503e897c3d0d8a52f300955308b38fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ffb68ec060bd08781b2d819977edd7de9f1ed12d7cd48cdc9a5f93755e0d6a`

```dockerfile
```

-	Layers:
	-	`sha256:c4c3189d826c3893a26f833a49a0f05146661de292f948caf206a5c12fb867d0`  
		Last Modified: Fri, 23 Oct 2026 18:08:54 GMT  
		Size: 582.7 KB (582699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbac568d5283eeedc6addefcbcbfb455ded6ced7155a6ada3ee5ae36de22767e`  
		Last Modified: Fri, 23 Oct 2026 18:08:54 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
