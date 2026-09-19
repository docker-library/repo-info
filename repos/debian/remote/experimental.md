## `debian:experimental`

```console
$ docker pull debian@sha256:4b68ccac7859d3c8f90bbfe4e5b77d288b394a5b4607376f9ad97f8665d4f0d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:57d34da65e83c9c0bab9188b9afd174b98a729685f1d1d41768db8c1f20b5647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49841980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b95db028d5ef5fb7b04c23bac8786205906e03cb92e621a71302c6a38acc925`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:16:06 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:842fc6f2fffa487b6d4d78f12910dc9b23af206b722ee70a8675f0c04baa8345`  
		Last Modified: Mon, 24 Aug 2026 23:21:03 GMT  
		Size: 49.8 MB (49841759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b863467ac3fe9d86f34628d1cd351fd382f224b1227d23580da0742f69645f0`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:77428453c252f9dc0a4e13c0af93ec16a8d0ec11622022eefde8b7fbd77d7852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf593000f942c0ead8da3543b316527c3f7603ee2648cb9668dddb7753dec5b`

```dockerfile
```

-	Layers:
	-	`sha256:3fc3c465ea0a4831edf96ec72220c4ea3e2867ea4f60078c8499a26067703057`  
		Last Modified: Tue, 25 Aug 2026 00:16:13 GMT  
		Size: 3.2 MB (3195037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab2a1daf08a0a97aa112217a935e89fd079cd5e39ac7cf382079cf200627446a`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:3787ced271cbc3ec92889aa79f5f925578c635824f44fef8a3a6df9d23d0c1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45923215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f10486a84f41bae66fa0410014d1075de60b685615d34756a26fca20244301d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:14:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:a114cfa6211004930f94d41831ae48cec12f306932ec251a20d8540051ce231a`  
		Last Modified: Sat, 19 Sep 2026 00:03:41 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfdad9909692c21873296333a4b29b999c7ecb32a047eb6efdaa52d21b98c0a`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:b1c82446c445c90c3788a9121176adcd80eb5f42088f1bb839c1053950aedb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258ba958d423ece47789d22cda12d0d0647c5436453a88a99eb29d58d16124b9`

```dockerfile
```

-	Layers:
	-	`sha256:b6ca1d1b4c99c8313a15fb0b50a77c7feefc8044b12ff3cc0ab526d1618f4baf`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 3.2 MB (3186046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01b49a441f755c4f0b3410c490dd9623be837971fb3265544c1c63699da700ae`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:c105a8621d6020b2f74b1ce1e837fcf0b6d75c216e1784328797a30d7730c602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb1b469213ed532ab176219a6a814fc4349a673622230a2b8ad6e995e7e258e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8ab480d513e9497dd82fd65da41cc20e2640460efb9426fe28853ac55893bc64`  
		Last Modified: Sat, 19 Sep 2026 00:06:14 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582a0d1b411727b5b29c77c3335c4e96f58fe91093cabd4a189ce0912d8cd843`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:7164e061b1720e7d419ef4eb4da6b67f4edc727cad433d083d8ab8e0801e9af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3acae42baf73daca82666528f2479e68f9863998f343f8cfcc0ec4cb999eb2d`

```dockerfile
```

-	Layers:
	-	`sha256:553062b10f85a9536abe1fe5c1cd8444c87a1207cb9a1163e68e441211bc6a9e`  
		Last Modified: Sat, 19 Sep 2026 00:12:59 GMT  
		Size: 3.2 MB (3187972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c12ba09a75374d73b0c6479602e66c53f2e1f39ef413add60bdd9540294cd347`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:3d87f421c9270c2d9498cba24fdeb4f4eebc0ec1a141df03a9d5678f33c6d983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51017655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5ec371cbdad44217435afc2d30cc705d117103f5982dbc47497b589202ffac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:16:06 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:f5a0fea614896ac10c89b84190b676826092421cc02df923e6d19649bca03f08`  
		Last Modified: Mon, 24 Aug 2026 23:21:00 GMT  
		Size: 51.0 MB (51017434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b863467ac3fe9d86f34628d1cd351fd382f224b1227d23580da0742f69645f0`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:de279ebf9a3499cfbd48a791d75b8fc112e12233d8e28aa191b9e6914ac87b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c12140238d41eb7fcb0441b06fb52034a8c2dd37d7e362eed42de9aa503f390`

```dockerfile
```

-	Layers:
	-	`sha256:056e7df76969420b1f34a8279a11d00035910da6be9e33e424318e4f8755971b`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 3.2 MB (3192130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24fac5218a83ceb06ad8ae8b403cebbec7cadf61f13454d82034df77b0d1821`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 6.1 KB (6078 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:88844f59d1b25256555583856c03e1f33bcdc2457f73e6e800451378c4ff3708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54779416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9829fda6a0fc3e49216559ac5bf4076866328db54fa8ba05deb0627072f8f2f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:151c0da3cb2bc85199441b941ab74147249a0d38e9f4b67a96345487930a9fde`  
		Last Modified: Mon, 24 Aug 2026 23:22:45 GMT  
		Size: 54.8 MB (54779194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239f8862151976c3478a7ff712750dc54e461eb5ed4d202e8032f6503327629c`  
		Last Modified: Tue, 25 Aug 2026 00:15:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:bc2781c36c3d9ac75a24c96565d288eddf26e7fe2471d474e74d61a6b164760e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0239cc601513eec4010168777f9238e391e7d21975aa38b24e7d9d972649eef6`

```dockerfile
```

-	Layers:
	-	`sha256:b15fd3185e55df86ae59ab69cc0c7569d7077dd7862a795eebeeb8da57e15de3`  
		Last Modified: Tue, 25 Aug 2026 00:15:53 GMT  
		Size: 3.2 MB (3198807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:873cec516fee71edafb36cacd4ab5123ee47d8470a65f86dc8c7c75c659d0526`  
		Last Modified: Tue, 25 Aug 2026 00:15:53 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; riscv64

```console
$ docker pull debian@sha256:1ba11faecc58a4262cb7db2757b7f143699ad5abe2fa0e01e18ed92bcbf86421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47562511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafa0aea860dd71c644c92dec3b0c11b355b99bb2401e6bbeb5cd7a8b91c3ba8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:22:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:9a062a9ce513a0a6955103fe96cea4bb5819555372d2091ea37e8832038cf143`  
		Last Modified: Mon, 24 Aug 2026 23:40:03 GMT  
		Size: 47.6 MB (47562289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b48da336040aa981780c8992a3f68ca1ed381c8787c41b8e46c12666a9f8f70`  
		Last Modified: Tue, 25 Aug 2026 00:23:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:f32fcfb4fc3d7f197ffec34c5672f8b54ab969da76b46d019fbd1dafdc77c48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7b559b6cbf1dc61fb82112e0b5e6e73afcc5e63c37f3a40f67ca5949642d66`

```dockerfile
```

-	Layers:
	-	`sha256:c3831c66b10ba92177346781ee40c8d34b116314b1ae885e1e119cf8af8a1d00`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 3.2 MB (3187405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c57a4567b42926eca108c22c75a2ede5c32cae6d8ec0335aeabcd7e47057a16e`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:7428b286448951017fa68bd7fb9072832388c43363aef841f4b66be40f71631f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49248531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45819364dbfa4c7204222907e850cf2d452e4ae2b2016993df9540752758e874`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:17:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:cd822fae30033ef5a57fd4181be81a44db3990b3c74604020c5ef41014dc9d29`  
		Last Modified: Mon, 24 Aug 2026 23:20:31 GMT  
		Size: 49.2 MB (49248310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ad8d58580ca12ee88d1cbdc4d23f9376da0fa7473f40432c7be1e48a73767d`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:9fc4955246f38a86cfc2c1c12fbda4e0a50f8f595d0f51e58d417f3379860832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa02cd91271c0cec5a3d20cdd1700fa7a13bda22a3af970fb4b3c398d7c60a8c`

```dockerfile
```

-	Layers:
	-	`sha256:e6fba381079b39d6a2b2e90a4c15943960b7bd72469ee56e867f7927a327ab5c`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 3.2 MB (3196433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a43b31ac619e34d3761bd29b0da2836e18a8b5c50f3c883ccf1dce2e672d7f2e`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
