## `sapmachine:26-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:d33320da43a4c057215eecfb77b658fb081eacf3151cacbf00f843d910caabcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:a574a75d50331ce9f38f25dcc7a7f07eceeac8f2a83c26313c22fc7bba22fc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169511940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c59f30edb3b2f66e028013955957e9735a9e30c6ee35798a3e0e5b89e7fddc7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:27:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:27:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8853ce36b73a80789073dac0bdc101008335129f26c737313f4ac503b9a0ab9b`  
		Last Modified: Tue, 18 Aug 2026 19:28:11 GMT  
		Size: 139.8 MB (139759133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8d4705f47e8f5959679a9dbc59cb23fd60a04fb091eedc0f76535c69486d7730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c626599215bef9a27b02d6b12a40232a357c140ec2c3cb3e12a1663f4863d82f`

```dockerfile
```

-	Layers:
	-	`sha256:164507194877c04b58ab4d2f0ad3607d99ef857bc65faa5d34fb4bfc6380bf2c`  
		Last Modified: Tue, 18 Aug 2026 19:28:08 GMT  
		Size: 2.3 MB (2302520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:489ee8dd29595fb17db2265f4e0767e2d21b788f38124932c82290c6247990d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:08 GMT  
		Size: 11.6 KB (11559 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:02f2c5f23f7323c1a24d9625d5421868f01fc536a98f1d00348f58ada14d0261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167687533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5c0ef122868f413d7bf11433dfa220285726759968a4a6f507ac2a5b4fa2ad`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:28:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d389ba4f8cfdaa657290d05ef8af3128d03ba9ea2b82576ff87097e318e0024`  
		Last Modified: Tue, 18 Aug 2026 19:28:21 GMT  
		Size: 138.8 MB (138800298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2770d49fd77e0035c4299333974bb4ea3861681f6d072ba596fce045d605beff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f7e714348ffc6af90d8b434d05b14515485a71b194a8c8cfdfcaadd8c01579`

```dockerfile
```

-	Layers:
	-	`sha256:2857e4ef5b8331a70bd9545eba222d7b0f8ccdca6a9143dce3182b6791a5438a`  
		Last Modified: Tue, 18 Aug 2026 19:28:17 GMT  
		Size: 2.3 MB (2303072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a44b120e49261cd774c814c1f53a71b10778fbbe2330db1999379e40262ee5`  
		Last Modified: Tue, 18 Aug 2026 19:28:16 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d599db80530774ade01b51b5c128d2df1c1b05363734fb6e2b5ac81659fbf724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172952315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2c5115bed2e0ddf8d5204fe2fafbf677f7b194cdf68e3a91ee6e88eeaf8edd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:34:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:34:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 19 Aug 2026 22:34:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0385fb8cd0dad9f35f7a3bb907e62f066fd65f1db5475aaa16ef6005368c4f1`  
		Last Modified: Wed, 19 Aug 2026 22:35:03 GMT  
		Size: 138.6 MB (138641120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:68c3558ed05366c2343e0bb9697ed48630b743adda2876046b69c7ce89abfee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e8ce68d0c6c98881e4de5cae522f90889febc4a5e5aea6c7787780916479c3`

```dockerfile
```

-	Layers:
	-	`sha256:ad2125f15c5a493257729156b118364af063d6bf3317764c76e8bbc3ea59d6a9`  
		Last Modified: Wed, 19 Aug 2026 22:35:00 GMT  
		Size: 2.3 MB (2301331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:280cc88628eb146d29c892fccf34c6d5e87fecb44168f76afa1798a298663af0`  
		Last Modified: Wed, 19 Aug 2026 22:35:00 GMT  
		Size: 11.7 KB (11650 bytes)  
		MIME: application/vnd.in-toto+json
