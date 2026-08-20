## `amazoncorretto:11-alpine`

```console
$ docker pull amazoncorretto@sha256:d5acc6bf47e22f335409c9d662158e10f6de7ab4f9991ad29ec2527d26961211
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:81ed23864648091d9191ff5126c26eccc2854dec2712c8b40e3861ec375f229d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147819895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbff6423237251cfc9e81b4d1491062c6314b8a2707f462bbb983ccd865cb1d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:11:18 GMT
ARG version=11.0.32.9.1
# Thu, 23 Jul 2026 23:11:18 GMT
# ARGS: version=11.0.32.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:11:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3545af483be27c605a8c6ca31cacfcdfbe2001cd188eead8d467e17433c481dc`  
		Last Modified: Thu, 23 Jul 2026 23:11:34 GMT  
		Size: 144.0 MB (143973504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:45cc7f9f71a48909942e15dda4e089c6ef07bef9153f91aa0eb643cfa793732b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa20f056c96b86c10fdec941f25d6a9c448d994a1399bcd61653cbbb1fdfad28`

```dockerfile
```

-	Layers:
	-	`sha256:8454c8ce0c7caa31b1d46d2dcc939a36e1ba914e60405efcd7dc37988378c0a9`  
		Last Modified: Thu, 23 Jul 2026 23:11:31 GMT  
		Size: 589.0 KB (589028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:337697639a45214c6c2633ee385acba746b35dec52f19c3c9e5aa13c79c71a8f`  
		Last Modified: Thu, 23 Jul 2026 23:11:31 GMT  
		Size: 10.7 KB (10682 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7e74b121c6808bfcc03080129cd5a4f67a9565732ab19b6d060ff290b5ead41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146530033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc064c5b8b4e48d8ec94e1a351208484b52d8042c3280903d571f1ae14b8f3f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:19 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:19 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:19 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fcc121ed55e6b97313b7f5fa75e0188c609fdc67607859a02d68bd2c1b4da4`  
		Last Modified: Thu, 20 Aug 2026 17:16:36 GMT  
		Size: 142.3 MB (142346996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ae70dd97d69f134e9fa597f215fa0f384a9a8c74ca84abe13ef4ecf2f7e9246f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c179cb742f0f3d104c2c99dca9ddf7ce9668f60b3c05fb782f9cb29a59fc5007`

```dockerfile
```

-	Layers:
	-	`sha256:9059a2be58a3338879025b3971275203428bdb77b5c67fd1e05968b2adad10d0`  
		Last Modified: Thu, 20 Aug 2026 17:16:33 GMT  
		Size: 588.5 KB (588488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f616dfd076ea906f364039722f16bb84e7642dbe32588e9aa64a200e82458be0`  
		Last Modified: Thu, 20 Aug 2026 17:16:32 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
