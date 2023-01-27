## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:af05e218466c2565ef13d21a915a35f44603e563b3ea95b1fb3f84f84d7481e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:eee0ff84af2314f8c0e10b03aedbe55530ef370f28887bd2ead845a97535d3d5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131302877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3efd04ee9eba61ddea4392a056efad62aab3c7f0dca4ff31813810e0dfe3a1fd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:06 GMT
ADD file:cbb7762965e1100a173296573d49c70a5e56d5318572ae1b037854e45a3c81df in / 
# Wed, 11 Jan 2023 02:34:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:02:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:02:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:02:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:248f02a8d7fb9e98e764c3ef93b9922d99e6b305be444aa17bace4ac12a55508`  
		Last Modified: Wed, 11 Jan 2023 02:38:08 GMT  
		Size: 50.1 MB (50106530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f922aacf80e8d4f20a47bafd73d9b7865d169f43635eaabc15b5e25eeb6057`  
		Last Modified: Wed, 11 Jan 2023 03:11:00 GMT  
		Size: 9.0 MB (9032940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b287e34dfb83462bf58f6751173d64481c601980dc53909c7d198527f44e88`  
		Last Modified: Wed, 11 Jan 2023 03:11:00 GMT  
		Size: 11.4 MB (11352159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8760a729a20f23e47ce926dd7b082265854f8834280377051a238bfaf725e51e`  
		Last Modified: Wed, 11 Jan 2023 03:11:17 GMT  
		Size: 60.8 MB (60811248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:a5c524e775e51d05902c4679ef86390dd0988ed44c29d9790007aab293dc9e06
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (126957199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74fd125525846baafa9d29e9273c8483a208bc20c8deb028249c1facf2d6b6b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 01:54:53 GMT
ADD file:5d45a8dd4f8495c2419fecb2fbe1375bee8fdd9c4ecd8482c9d93073ceaf0eb1 in / 
# Wed, 11 Jan 2023 01:54:53 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:22:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:22:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c18e65c95b83dd67fa3b288d25c836639aed042685d4b545ff41efbf3046505d`  
		Last Modified: Wed, 11 Jan 2023 01:59:27 GMT  
		Size: 49.1 MB (49082333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2627725f148bd514b2afb35f5ee907f5f061ac39a52d6f89b1cf91b8a80f46e8`  
		Last Modified: Wed, 11 Jan 2023 02:31:26 GMT  
		Size: 8.5 MB (8484837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81a8997d0bb710a3d95fc77245088619618e15dc87431056622547133566c3`  
		Last Modified: Wed, 11 Jan 2023 02:31:27 GMT  
		Size: 11.0 MB (11000015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5949aacd5a13ab1919fbce97d65475583ac45fdc71c7ecee03b091614645ce8e`  
		Last Modified: Wed, 11 Jan 2023 02:31:49 GMT  
		Size: 58.4 MB (58390014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:64db7e511b9726e51414ffcac18c23db78730785145c1d9da354da5abfd1dca6
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121725099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e2e2b4b6ce12e640daa0e9900ecfbdc4cc5b9c91d1cd4ba66f8bf1239ca966`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:59:43 GMT
ADD file:b6a187b9130cac841492cfd6fca00af190439f4343e640b8bf9a62de450ba611 in / 
# Wed, 11 Jan 2023 03:59:45 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:30:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:30:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 04:31:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:702c5cffc9db6e776f7684c8b275c47d1706fe0c1c6ae97ecbca1158b5344ce9`  
		Last Modified: Wed, 11 Jan 2023 04:06:34 GMT  
		Size: 46.9 MB (46896199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bc10aae9d9ca78937a14c74d77038319d33368c9eb41b80d9f5931c62c9efd`  
		Last Modified: Wed, 11 Jan 2023 04:42:44 GMT  
		Size: 8.1 MB (8133411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5241b3a60c9e1048ba06ff64a109707b8e25f445184957a0c680152e95eabc`  
		Last Modified: Wed, 11 Jan 2023 04:42:44 GMT  
		Size: 10.6 MB (10633267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b45a71ccf9d081155bfef6ab2ab05af9ca87f9c343ad39cdbbf80e9adb02b0`  
		Last Modified: Wed, 11 Jan 2023 04:43:06 GMT  
		Size: 56.1 MB (56062222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:01b7e27ddd67f0b2ebc19bc1b6caa0ba98c207d1f3c20da00d4ebed09ce21f6b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131017707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192f7f02b29e5a98466e79ba81a8416fe4f05b71b9bff411822508c3435b87ff`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:06 GMT
ADD file:c43d870f9cc5c78ae2b5929a9b3ff0e3b1f78609ed1778045e9ce2cf6c85b0c9 in / 
# Wed, 11 Jan 2023 02:57:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:21:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:22:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:464937bea8f251db8aac33b1f72ddb6cd41283ccba5ec3cce468797a236e3411`  
		Last Modified: Wed, 11 Jan 2023 03:00:25 GMT  
		Size: 50.2 MB (50161611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034a47bebed162ca9182680481208a874354e41121606c44115656346571ceb`  
		Last Modified: Wed, 11 Jan 2023 03:30:39 GMT  
		Size: 8.9 MB (8865422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbec90cc75b7a823c451d4bccc53bfe36149bf167580a9b44f84e18a6998ff3e`  
		Last Modified: Wed, 11 Jan 2023 03:30:39 GMT  
		Size: 11.3 MB (11317912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2791ace7b40191fcff05781360c006b9bdc3847967314bac536820c9bffb4`  
		Last Modified: Wed, 11 Jan 2023 03:30:54 GMT  
		Size: 60.7 MB (60672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ab99c1e0c5b5ebda575d1ba698715c2f36bcbb215d6ce78e123b91d469907d77
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134616272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0925aef5f74e8f565157a04390a939071cd486f2943af06fd305a2bd03819e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:15:25 GMT
ADD file:06e348f9dbb5c60f5fd91cd10d8ee7ea08880c456ebafe9abda4790022b4df0b in / 
# Wed, 11 Jan 2023 03:15:26 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:44:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:44:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:44:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a47c0f7cbd17d33fb9f2b6cf8675588aebc0fec7ed1b046061cdf73f126e59e5`  
		Last Modified: Wed, 11 Jan 2023 03:20:53 GMT  
		Size: 51.1 MB (51145053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587d34329fdb4032987917ae2adcce64e09e2b539f582a4e559b3047a4ab25ad`  
		Last Modified: Wed, 11 Jan 2023 03:53:32 GMT  
		Size: 9.2 MB (9210776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c303d7c650df0ed1a7e0e695ba5e15ee30e1b61926f8062c6119dc3e2d0e40f9`  
		Last Modified: Wed, 11 Jan 2023 03:53:32 GMT  
		Size: 11.6 MB (11555963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0013ba284074bf0700e716a0538dc783c565fc71470a4b55e13fe70bb8f0d1e4`  
		Last Modified: Wed, 11 Jan 2023 03:53:51 GMT  
		Size: 62.7 MB (62704480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; mips64le

```console
$ docker pull buildpack-deps@sha256:b97726d305cb7dd4287b949a409c1e516d5db47f13970c503f300dfea44e520c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129304267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059c29a8d79cad005be487a4150a0dcbd37cf46a95116498fd105947dedbbd52`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:32:17 GMT
ADD file:aa37d39fc83f9cce3f1f8522cce22a9c3f9734fea6996431d00a2921079da343 in / 
# Wed, 11 Jan 2023 16:32:22 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:11:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:12:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:13:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:951f9db918ae0d2bc2c008522e4d5801e026653a12e21d76a02a48b96faaaabf`  
		Last Modified: Wed, 11 Jan 2023 16:41:22 GMT  
		Size: 50.1 MB (50120566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f5f91f049142f1806ecb72912bae28f718b88cdfc593aeaf7a39f089532f66`  
		Last Modified: Wed, 11 Jan 2023 17:39:47 GMT  
		Size: 8.4 MB (8398591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cee1eb44d9967c2535c5377493c304e9066c347f97119b605462ed59745bcfa`  
		Last Modified: Wed, 11 Jan 2023 17:39:47 GMT  
		Size: 11.1 MB (11104095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3efd79671fe172dfdbace9a335d8792f6cae970d99d15077cf26e204ebb898`  
		Last Modified: Wed, 11 Jan 2023 17:40:37 GMT  
		Size: 59.7 MB (59681015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:cd4138795e144cae3c21791b02157f404c81f1a4c88e8b787bdbcba5214f87ef
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142185158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dafc8aa33c01c6a9468dab84989afa2fd88ba26687448d67fe5723d8a92cef`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:48:20 GMT
ADD file:be85aca9c16cf896fbced9508d29913a52fd69f8b2fd24c49efca520a37eeb1e in / 
# Wed, 11 Jan 2023 03:48:23 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:09:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 07:10:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:752672804a573b7cec5745cda59b6068007db5af1aef95a3e7929331c20247e1`  
		Last Modified: Wed, 11 Jan 2023 03:54:09 GMT  
		Size: 54.1 MB (54143855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750945def87bc453cd91c327bab81f39d93adb5ab86cdb4c913921aff512e2df`  
		Last Modified: Wed, 11 Jan 2023 07:24:14 GMT  
		Size: 9.6 MB (9612460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51845b4a51b4708da56bb53781c3d9bab20bd3820ac919ab7598b33948797a8`  
		Last Modified: Wed, 11 Jan 2023 07:24:14 GMT  
		Size: 12.1 MB (12114275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cce18c9a581eda32c9677a56ce48754f33c6fce961d31ad0e8990173c2b6421`  
		Last Modified: Wed, 11 Jan 2023 07:24:42 GMT  
		Size: 66.3 MB (66314568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:22fd62c29c4a6328f91319b7e1531e71be8898c12567e2129a4e3e349d0f6b7c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128118870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6a1eae851615ed9b456aa06e8f8a7be4e4eb5e7bbef1a1cefca1adb54d4036`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:21:33 GMT
ADD file:1ba7db44596ea26688f29eb4d23da5507a0d71de49facb85ffddbea04928e97b in / 
# Wed, 11 Jan 2023 02:21:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:46:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:47:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc45c63d26bf6e7676d21861c5543952964197c106b2cd255789a8aa3734c0de`  
		Last Modified: Wed, 11 Jan 2023 02:26:06 GMT  
		Size: 48.5 MB (48490381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b941bcdefcde17ded465ffd68a2ebb6d2c7db9642b4c6e5df1e8f72eb96d886`  
		Last Modified: Wed, 11 Jan 2023 02:55:46 GMT  
		Size: 8.7 MB (8665948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccacc30d10abfa911c54fe2ac56c3afb46ad1b934aed0943fb3ef1ff2b4fe619`  
		Last Modified: Wed, 11 Jan 2023 02:55:46 GMT  
		Size: 11.2 MB (11215678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc6339bd7d1b55d1a706abd8cfd85402705ea34b3ae5b1d868a704008e244fc`  
		Last Modified: Wed, 11 Jan 2023 02:56:01 GMT  
		Size: 59.7 MB (59746863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
