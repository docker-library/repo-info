## `amazoncorretto:11-alpine3.24`

```console
$ docker pull amazoncorretto@sha256:dbf9d1e5dd9f3ec7e069828ef22c76f26a191e6d376318e5237f8517fb2acb62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.24` - linux; amd64

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

### `amazoncorretto:11-alpine3.24` - unknown; unknown

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

### `amazoncorretto:11-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:83f855bf5fb6d8de8fbc8199c787a4ccf73cf3b9dc3eeaf2f4b96bc50fa5867d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146522718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcefa05c9460b84c3aa10d168d6699ff499689a6108391ac67080aa17a78067a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:58 GMT
ARG version=11.0.32.9.1
# Thu, 23 Jul 2026 23:12:58 GMT
# ARGS: version=11.0.32.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:58 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a731225716120a84c1ac85a700e50879e19740128b6494ba8d27f0266745e8`  
		Last Modified: Thu, 23 Jul 2026 23:13:14 GMT  
		Size: 142.3 MB (142339681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:565024224a221d061193b959fb17212904c6415f69258fc2477b528e403a7995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08fca28a58c1fadce636993ab051904924fd0800225bf121c1aa687155a2cae3`

```dockerfile
```

-	Layers:
	-	`sha256:8e7f92fc5817555a24ab5b68e9464ffb5377bc65a9dc1ae840705eb554def16b`  
		Last Modified: Thu, 23 Jul 2026 23:13:11 GMT  
		Size: 588.5 KB (588482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f14d61f1a6c424209e003fa948ea56816eca0f172bf0bd72d9a5019edd8d40cf`  
		Last Modified: Thu, 23 Jul 2026 23:13:11 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
