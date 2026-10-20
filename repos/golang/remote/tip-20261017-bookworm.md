## `golang:tip-20261017-bookworm`

```console
$ docker pull golang@sha256:203c080c70a4839842ab5de2917e0497da57ab46dbb2fcb0b4975faedb71c439
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `golang:tip-20261017-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:591295d07d12edc10335ec9afdec015994bf1940a8f87c273264ac0648d6d8c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336892315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ac6e9d73983528d48050d2653d64a650015aa4a230e498a6fb49bd4b81cd44`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:10:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:11:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:11:50 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:11:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:11:50 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:11:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:11:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d8f3995a9820ab77205b18ac5ed8f073ad91aa4456c55351440d30232d99f3`  
		Last Modified: Tue, 20 Oct 2026 03:12:20 GMT  
		Size: 92.6 MB (92629966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d07970771627d0fc44985d114123f5fd927a97b65faecc0513972b352bc31ef`  
		Last Modified: Mon, 19 Oct 2026 18:01:33 GMT  
		Size: 105.2 MB (105153851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8e112db060f375d311e386157dab70d8644326ea8d23bafe35f9590b5f2508`  
		Last Modified: Tue, 20 Oct 2026 03:12:08 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:f0b89f1fc2e83ab460e8e43fa526f66097bb5f196ba37996091ac0cbf5e9a075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf31ced117ffd5433199c5f069c266907264bd1945a67d4fe67e3f50b7557112`

```dockerfile
```

-	Layers:
	-	`sha256:94a149e282a3976204c626bef813920725af2a6d933842ea51814e97fcb8400f`  
		Last Modified: Tue, 20 Oct 2026 03:12:18 GMT  
		Size: 10.5 MB (10503090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e97568e45f9331454a50d6b24d471034fa7abe27212e82f9b354471fceeae4ab`  
		Last Modified: Tue, 20 Oct 2026 03:12:18 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:c66a910ea27b894f0bd24a8e382e4872c235658951193904ce7b3c94b19698b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295294316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2564969fc050a3113e918d42b827974dab6ef629d201818598d05321f2fa52fc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:13:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:15:03 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:15:03 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:15:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:15:03 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:15:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b768da400527c8a0e4827a2830eb7d6018a22af7b71ff5838ebe45eea9ecbd83`  
		Last Modified: Tue, 06 Oct 2026 03:40:51 GMT  
		Size: 61.8 MB (61771060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33197208de4c8d927d7f33ce49fc6ba3a19111f63a4b0ed13e9c197c8e61f1d9`  
		Last Modified: Tue, 20 Oct 2026 03:15:32 GMT  
		Size: 66.5 MB (66481035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc91ee2721cd9a109da67ffc60c54000b7efede3b8d6128a3f9c3f61597e002c`  
		Last Modified: Mon, 19 Oct 2026 18:01:38 GMT  
		Size: 101.1 MB (101053157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511ddb54070a79c2d8e411157b46e478b18a1af4d88cd4a94d7e19ffee2ab089`  
		Last Modified: Tue, 20 Oct 2026 03:15:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:880e3dcf37f1e0d9319cc0f431f525b99309f573b992e6add56aba404bbf0428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10337997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebb4190dde5feaaf4aada98dec02b15aaede859c08b27dcb77b33890e7c521f`

```dockerfile
```

-	Layers:
	-	`sha256:cb2f0821fffbd23868108813aa85a492db843ecdfe6566dbf24e3d5366369ac5`  
		Last Modified: Tue, 20 Oct 2026 03:15:30 GMT  
		Size: 10.3 MB (10309784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d70d33deff7dc52f2b7a484965c88f90e2f02b0208c8a336ee17be19bd3b38cc`  
		Last Modified: Tue, 20 Oct 2026 03:15:30 GMT  
		Size: 28.2 KB (28213 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:aa88baab1a34e93498abd3ca493028244acf108a55710f945fccc16b02b54313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324868886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7084bd301036bc5fc58277ad3c35d160501f7e390cc8355bceebd3f907bedb85`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:10:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:11:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:11:50 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:11:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:11:50 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:11:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:11:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b086d2f76f8c85bfccc3f6cdc61d92de443a58ccf1b8185314879f1a3899481f`  
		Last Modified: Tue, 20 Oct 2026 03:12:20 GMT  
		Size: 86.7 MB (86700253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9417cdc878b050430cd75ecb0e089d66a342451bcf0ecc4ee4953b6cb8a5882`  
		Last Modified: Mon, 19 Oct 2026 18:02:17 GMT  
		Size: 99.6 MB (99554841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8e112db060f375d311e386157dab70d8644326ea8d23bafe35f9590b5f2508`  
		Last Modified: Tue, 20 Oct 2026 03:12:08 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4d3e6fc37d4bba41832947fc2eabf8675b19b4437931cb9c455f1ecba68cc5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d77ca08e3e11e00a8c59ebc1c18ac284366d474b7618d432fd556f22fdd0159`

```dockerfile
```

-	Layers:
	-	`sha256:caa0fb9b00461c4f65e9c50edbf9a72c1cf64a591dbb071e0f0166df5528c07e`  
		Last Modified: Tue, 20 Oct 2026 03:12:18 GMT  
		Size: 10.5 MB (10530914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d03b3a8fee8a8fe676980d1071713d453804e7470922216825eb0678357d93aa`  
		Last Modified: Tue, 20 Oct 2026 03:12:17 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; 386

```console
$ docker pull golang@sha256:d61421ac0660f7f56fe8fc4014f6931768e703d17b8b2626f3d37649d82c5803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335897416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4b43743fa0aba324c7a161b667d1555e654d0adf66d03e8f0ea7b4dffdc79e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:32:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:10:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:12:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:12:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:12:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:12:05 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:12:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:12:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711f4e886b543dd0de1ec42d806d33e26264ccc6571085235d546d2e40a384e9`  
		Last Modified: Tue, 06 Oct 2026 02:32:29 GMT  
		Size: 68.7 MB (68690210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5e9417d6c7d06b0d6e42185bfa3aab54ae056d27c974fe160096bf06a4e805`  
		Last Modified: Tue, 20 Oct 2026 03:12:32 GMT  
		Size: 90.1 MB (90051638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f34ae54752f89828f255f547252f84b9b2f661f73e2c00f48ff397c18791686`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 102.9 MB (102941753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86419e1d3efeb0574cfd7d5f61945f7a836eee05b30882c34e177da602caec4`  
		Last Modified: Tue, 20 Oct 2026 03:12:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:b5dc13fa53278471c7dbe4227a7e8fefd086489aa073ccefb163ceb5b0ee128a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a5aae38f26659ae991aea14a98bfcb78836d9d3f72d7afd4bb1ff3b635586ba`

```dockerfile
```

-	Layers:
	-	`sha256:362c867e357bcf1b8d376bb709f27f00227945193241e9b38e5750320cd2c146`  
		Last Modified: Tue, 20 Oct 2026 03:12:30 GMT  
		Size: 10.5 MB (10482669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1b253f621fc43367cbf69dd1c401a281e14fccd0c5a8c50aaf1da1238ee6f5b`  
		Last Modified: Tue, 20 Oct 2026 03:12:29 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:5fa20f497f943e524025c02bbec2e3e2e80b4b039fe341eaab89a2b3430caf4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342549613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae569a6b2b39ae73a4bc59f30c07eba00f99d8883d2f769dd51fa8bad634f22`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:53 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d41e77c98051f59478b4a49ca0cf4e06c315a989a523c0a6cb8b7fb1d46d288`  
		Last Modified: Thu, 08 Oct 2026 17:12:10 GMT  
		Size: 90.6 MB (90577932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3969c5ba5e57deec40f3cea5a93cb146887629c240af3dd3c420cc91bb72540`  
		Last Modified: Mon, 19 Oct 2026 18:04:11 GMT  
		Size: 101.8 MB (101763666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a214476949c6fdf4920ff18f978589df70563213158acebb4c0dd18d5c01e7`  
		Last Modified: Mon, 19 Oct 2026 18:04:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bb43be044b1abb6f934fc410c6d9e8424497f03b781d0e11669038f1c865f131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10503723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2486ee97a00e151a02c41791385c5a8c9e482fd46f60efc43fc4ac9826bb79b3`

```dockerfile
```

-	Layers:
	-	`sha256:9b98188f77d82d4ecc37b332140c27a110e9d8747039338285c71b212c42c5da`  
		Last Modified: Tue, 20 Oct 2026 03:12:26 GMT  
		Size: 10.5 MB (10475575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a6a191778ed6b8fb57a999c8885430488ee8beed76e9c9c4ee430fcee4a8270`  
		Last Modified: Tue, 20 Oct 2026 03:12:26 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
