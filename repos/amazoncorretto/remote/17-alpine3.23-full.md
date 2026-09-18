## `amazoncorretto:17-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:1c566239cad43012b2fb6dc05dce8d8866a72cf5c5f0134653ff2e1aa17fc790
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9f1a01d0c50fa3ad169f4d03e473ccd52ba94ff59eadf783f0e490860734d3d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152785447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39a901a0a071e95a0fd76a0f3ec740af6104e469915efc4c420816453150fe8c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:39 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:35:39 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db97f1ecca5295c60f73d1e12452fb5ae95506eb959f4a4ad21517978f80feaa`  
		Last Modified: Thu, 17 Sep 2026 21:35:56 GMT  
		Size: 148.9 MB (148936940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2278bab3f01d889c3ec3b7d68a225a3cfb460b6e3ebd9b5d1da11deaa719690f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344039c1be8980ce733068d2a75bcab28888c584674ddc6675f54f4baa9cfd8b`

```dockerfile
```

-	Layers:
	-	`sha256:28be3dacdfe79d2360a22e2eea3e3423b18b6e38f786b3b768ae0302446fee40`  
		Last Modified: Thu, 17 Sep 2026 21:35:52 GMT  
		Size: 582.5 KB (582507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13df3475a6986429ee9d41c67f22b7f22162d7ad682d6bd9fd81de6e5ec76898`  
		Last Modified: Thu, 17 Sep 2026 21:35:52 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:828b090c16cb7901eda8ce698bfdaf05a7a535c7d4b2c4d0a75a1d987f5ca7fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151549336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a313a2829cd5df843123984fab6a2e26124a017ff82ab9e4b283f9b7b2267cd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:39 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:36:39 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca58aceba80acf5803a14f21ae912237f5cca3ff26e771312be8422d1af8526`  
		Last Modified: Thu, 17 Sep 2026 21:36:57 GMT  
		Size: 147.4 MB (147363280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f6e34c5a85b99ba1635e231763de4c169ddbbb58fb7d99556f79157896f333d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.8 KB (590759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a6b4328388cf0085687acafce496382d66f86bde4a4adf0e893bea5392b00ba`

```dockerfile
```

-	Layers:
	-	`sha256:a8509fb52b68b2633db2b02a52de02b712b4573528880b77abca8a6f2ae89e1d`  
		Last Modified: Thu, 17 Sep 2026 21:36:53 GMT  
		Size: 581.3 KB (581276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee0de762f7c30ccc164baa6f8ac8d250906f435b6a19f67d302b1d3fa40546bb`  
		Last Modified: Thu, 17 Sep 2026 21:36:54 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
