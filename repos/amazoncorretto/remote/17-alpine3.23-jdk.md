## `amazoncorretto:17-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:ccced8084428a53ac185f047c3606b6aa8f2818a650436fc0299ba17a1db9927
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c033852feeb0daecb12aa9ff02488aea90c7c56e7924d256336b075b0d608ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152781355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd88b00b762322a241ace401b2809b23d085a0924b8974d4322d360da82d989`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:15 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:15 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:15 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdbe5a49bf401bac009cfaf714d76086befb40be30b6b0f8b2f0dd54c47a5d9`  
		Last Modified: Thu, 20 Aug 2026 17:20:33 GMT  
		Size: 148.9 MB (148936934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b5aaa5036692fbdf59dcb7fab3a494f6a4595c83167699a9d94501b0602cd2d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cb03373855f0189ba9943837d7da74ad162449765dce4594a43aa45cb8d771`

```dockerfile
```

-	Layers:
	-	`sha256:c34d9717f117f7c1c63f3a4e5e65f418fad511e7d809669c647f7be4face271a`  
		Last Modified: Thu, 20 Aug 2026 17:20:30 GMT  
		Size: 582.5 KB (582507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8c73a9687b93d756fe3114ad2cd07459ac3ac0fbbe3fc459d7a01f6d3850701`  
		Last Modified: Thu, 20 Aug 2026 17:20:30 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23-jdk` - linux; arm64 variant v8

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

### `amazoncorretto:17-alpine3.23-jdk` - unknown; unknown

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
