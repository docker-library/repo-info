## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:00d216ec372fb67ee8d7278a6e7d0c7dc113af84a6f3a4b0b43292a23f0e0297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:5900d24ef53bb3e078fcf322aab3f4ac08d5414d3934c5922160e3ae751450f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60355654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146012f23dee6dfa47b70294c8265d95da558a25806e3246f7ac4923305cdffc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:47:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ecf8a2dccc3ff6483dc94013a626cf8d1d2c570abbd8762780313faab534c2`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 11.4 MB (11396916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b69102d8a08bc334a36d49c37fe634a4305a78737cec0905bf5ad89b8cf682`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2221378bdc898bbabc521473650fe4789ad841e8884c38b0321f72cf2aa653`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6c8b583bc08448c519a6d8a1aedee46bfa3e4b39680d30ff10a03e29bf20df`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 90.1 KB (90053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9ed144b39747fae19d97671feff21ce7efa9b1f704658031fdad86f3e7261c`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ecfb0f2951e118d800b0be374e0bf761c3e75fa5565b9d6fae42b67c3bc3648f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3574586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d07745bfffe8138c87b3d5e2e1a8ddf1b2d48006e5f92fcd3de6b3c03a418c1`

```dockerfile
```

-	Layers:
	-	`sha256:7fc1ba0d0dfd09bc22420259cf1e0efbd5f4c7918e736c890f7f386ce9d541df`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 3.6 MB (3558627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ae01a514f2c9417f5b712d29c69578b166801ed96d15dd64c93ffbcddba56e0`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1fd87a7596acc01cefa14024028f8a8c16e3d36a899448867e61e0512e9fc9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60079293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba08276b092d5cf763d51d36fa93ae2e34d3eb7c63c87d6028f17507fafa71c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:50:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a4a7782124dd8ee8eaceb9b1fdbbc19c3f5fb426b8b72292db7438710adcd4`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 11.1 MB (11094690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b83511319f8c7f8b86c98a0af3e8425a9c6cbb2701aa54ed684084eef61265f`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790c49bcc820ad2a60eaf03c8fc3b59cbfb9db8f1b02c2ab34bba119a79b66f8`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af60c9f5780678635aa0c3a1a3e8b57ef1f9c97f397038d4ba8facc76d3f9e45`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 90.6 KB (90647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b0f3ee2df3981ff9691e191f7aadb066abc8cf492b6696676d8282b8de3855`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:05ecabfbe764f0791ce8e77b97223c8d9f892c7704f91a511b54bed4c2712114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34adb82748fb2e4d59214e2016ec12b70ea69a49a4fdb70d6ade6b846c2ab4d`

```dockerfile
```

-	Layers:
	-	`sha256:ae854cdfaa1be06f2ea6783d9775d71baa0822c2597998544bd6360d4d3aed95`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 3.6 MB (3563332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad99bd442a316b4b4fff727c0bcb546fbec4f066117191af9adc8042efd1ceb8`  
		Last Modified: Tue, 14 Jul 2026 01:50:57 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:69e8d8118d775ccb87c5b7133f07fd9d380842ec91e9fe80ba5f4549fcd8e503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61913475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1fea9bf6b47e2c693a0ccc332e0f0256f997741dbbcebe1d6a619c5c15fdb9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b089c3211ff931d2900d8557b90e464810026c792b816025403c6f29a99228f9`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 11.6 MB (11628704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3e098c848961aef70a2bf222b479de79d672c8ce002bd654fdac13d975d64c`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5591ff2c8d32c3a16cd0f123c1e40b36e93628caa22d2818bef6acb92fd396ae`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bb19a47b800f9b33b5e72961759f618c2880dcae40dbbeacbeedd9a6421f3e`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 90.3 KB (90273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c248f35238ec882847ac7cdfd1871dd0f430e537f9a546bc2514a83b235efc`  
		Last Modified: Tue, 14 Jul 2026 01:49:42 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:79d2dafdf86e7e5e8f678f58220eead1ea98481d823f6d1782f668b83b003fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3572512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b08dd24acd3c35673428f677fe92ced98992ec555e63d1b695f745ef9e45ef4`

```dockerfile
```

-	Layers:
	-	`sha256:77b2785bf4809ab7214a8ebea5aad527fec17045376087851d75abe9512d56d0`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 3.6 MB (3556583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ea5fb72ec4068c2911a08bc227785fddb968e89791d6958c686002630470e23`  
		Last Modified: Tue, 14 Jul 2026 01:49:41 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
