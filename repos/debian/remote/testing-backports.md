## `debian:testing-backports`

```console
$ docker pull debian@sha256:92c509b309954558f189f866079bed083d4750dfea7dd56cd8c8b1b5a8418d80
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

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:076182b2b6fdfc3d04097b911da7229dad9902d856fd6a280922d0bdc0421b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48865556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb56baed3a6e17300abbdaa4ebcd811828e02549019a1d4fee1cb6d34d561bdd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:16:10 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9e0242bb3da2f89ebd64e68593da72e3f7d5152d2413ce055d3ec9310ddb927a`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 48.9 MB (48865333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1ec1461faab4ddfdec5de1351356f56e5cccd12666d6f6b3195daf25fa37b0`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:86d401c5bfae62e783da770c937860538f13d37484e7cd4664127dbec4b9081d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3155789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aafca60d32f9d21ae135c312b06022f15f3129248358f97e70d59045a4b9307`

```dockerfile
```

-	Layers:
	-	`sha256:fda12f3d4db0e1e3edb2559b10a625bff7dd3a315a796b8f0b2c1fed9fce3125`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 3.1 MB (3149995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85498fccad7ae9efca004708e7d4805635c632a0d48fd80b79b3c241ec73096b`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:30cfde65d1b3710668f37e352280ac81c00b7f9c51bec57ce81ad68f7d1505f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45653315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99c0de353ab4e47cf7969efb5027852e2680b682d338f99753433b92b8c997f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1782172800'
# Wed, 24 Jun 2026 01:15:22 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:17c8586e02588ff5c69ae25e8b2ed19f2efb6560f7d5a9b5037ca77d4d64729e`  
		Last Modified: Wed, 24 Jun 2026 00:28:32 GMT  
		Size: 45.7 MB (45653094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b7e733335cd6462309bf9f2a50d206ae945fdaeda574d82fc9a35692631754`  
		Last Modified: Wed, 24 Jun 2026 01:15:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c69c834bedffc1263267c1da7eb29de2095fd29b1b2a9d86dbbcc59c2863f6a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617eac6c69d8db034531286068712e8044d82b11f17be201a6fde21ec07d03ac`

```dockerfile
```

-	Layers:
	-	`sha256:16f2fa83f9ee88f6d345a5aec8b163dab0030fc298f5da223ac53dc4a973056f`  
		Last Modified: Wed, 24 Jun 2026 01:15:29 GMT  
		Size: 3.2 MB (3152079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db53482096cf9a3701714b11ac5358ecbd50d0b51211e69c87d850b48adc6aa2`  
		Last Modified: Wed, 24 Jun 2026 01:15:28 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ecdca904c700b69bbe86aa493be2a5b90b4d271c3cc4c8613d440c0b6c61ec82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48890825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdf754029fb677637fadcb2adb4bc93ade8b5675b4c7f34cd115b0644ca2c0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:15:56 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e24d577d84750492035e9c782071fab720554e89588f20e1fec36b9494c91758`  
		Last Modified: Tue, 14 Jul 2026 00:14:31 GMT  
		Size: 48.9 MB (48890604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08e3282dbff1fd1406228969db41bf0d77dceaba5ed25e8a7e04b424fc0738b`  
		Last Modified: Tue, 14 Jul 2026 01:16:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c32fc0e86963137f5f3c06cb74daaa50c4243d2c8eed5c03afe4b0e18198fd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48efa26628bd2597708c5f6a1a30375d91d05287252046d4a334f97fafccbeed`

```dockerfile
```

-	Layers:
	-	`sha256:2d3d445211c22bef77e7e79f334fe6cff73b66fc13ca6dbf8dfa5cec48fca7b1`  
		Last Modified: Tue, 14 Jul 2026 01:16:03 GMT  
		Size: 3.2 MB (3154665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26d564c309680f045e7d1fcf6ced9ab8d9320558ca5982bb144d56f826c820c9`  
		Last Modified: Tue, 14 Jul 2026 01:16:03 GMT  
		Size: 5.9 KB (5861 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:e9be4f15be16eb75e0205872da05e7308b48d59a395979981cea95f8cf953fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b467b997390a4f9f172ca771cc64230a2b5c4d47d29e6b348fe2dfc4a9eff3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:16:13 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:033041026c794ce2a9a5cfe5611236b0c404d192ec5d8c3ce754a28b60097f8f`  
		Last Modified: Tue, 14 Jul 2026 00:15:16 GMT  
		Size: 50.2 MB (50191151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8eb81bfdf8aaf0f930cde558defaa99a983b0135069a400073345fca7de6e49`  
		Last Modified: Tue, 14 Jul 2026 01:16:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:797d8b813ef18992e59e0666393d24db9e895d1b50eaf8f5eb93a3b96e2bf689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3152978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e86deb8ec3f3897ca4e5f7797c7d8a43397b5ae9e14939d6ebcaf46b7ed1dde`

```dockerfile
```

-	Layers:
	-	`sha256:fce073f7bcc14b0c3fc0a5a201d7bbb8ae18271dd2373100f67d26ced6e3d67b`  
		Last Modified: Tue, 14 Jul 2026 01:16:20 GMT  
		Size: 3.1 MB (3147201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d9610bc9cf20ce475be7034c6d77bab7e28f27cfefe06c03e44357e9c17d6d`  
		Last Modified: Tue, 14 Jul 2026 01:16:19 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:28f9cf8f6e389fca943b8dc030ee10bffcc5ee157f82bf1370d224763513fbb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54079253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc17a96abd9457eab425c4196de9441582f506a5258776205a7d526b79163100`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1782172800'
# Wed, 24 Jun 2026 01:15:02 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:edc739abe003d71e29f51bd3f67a0748257a233f97beb886321f5f660e6cbaa8`  
		Last Modified: Wed, 24 Jun 2026 00:30:03 GMT  
		Size: 54.1 MB (54079031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fcc96aa82b7a61d2bf6c027af34cb9712953ca9cd5f4064f57346210c3c572`  
		Last Modified: Wed, 24 Jun 2026 01:15:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9e775ce157ba50e6d0cf728694c504901d20a952d7da103855500c567df6b452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642d199c1045e9adfc190c9d7326aa17cfcafcf872a6b3314a7444bc81b7a4c8`

```dockerfile
```

-	Layers:
	-	`sha256:46bf505c03db0d03793eb2b886e767337fa5ca690897900a955622766eb4ab03`  
		Last Modified: Wed, 24 Jun 2026 01:15:17 GMT  
		Size: 3.2 MB (3154214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54e5df05e5a6e355efa7a6fa1041f7a98856fce4086032318bbdf5b535da311`  
		Last Modified: Wed, 24 Jun 2026 01:15:17 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:b91a711d06b45de8793406ebf03efcdaf50a9c79f51fe47008b7dfe304d13417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46974691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ddea1040e644f5b6ccecb60bf257e84e8165e87821ce2b2103226182ebd288`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:19:06 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8a2ab716bd8d6cebb8ad2e0fe787a7e74f8ead3d8eb0e664baab5ae057173cc5`  
		Last Modified: Tue, 14 Jul 2026 00:25:17 GMT  
		Size: 47.0 MB (46974470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ead1d72af6706c44109663fa88b46b8e876aaebe7b2682b8664c2f77c7516d`  
		Last Modified: Tue, 14 Jul 2026 01:19:59 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1c16dfdb6bda74c6f1e7962bd0d175b6c6a3e22198aea703dae33b5a0decca8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3147311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bee9fbaee242a1ce442911427760734a4006bd0318305f575d2883ee335489d`

```dockerfile
```

-	Layers:
	-	`sha256:426f7785cf42c5886458e2a5b335ed776e0ce45542805bcc4a906fd97cdfe475`  
		Last Modified: Tue, 14 Jul 2026 01:20:00 GMT  
		Size: 3.1 MB (3141491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30060492ac77c8d3632266e45cf4690514fbed898ad7d4588e07066112d2eef1`  
		Last Modified: Tue, 14 Jul 2026 01:19:59 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:16cfe06192b515e2980303b37695cef3579478a8aaf37a7a391947d60de76435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48492061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92eb6e904483d37b01a5a49c904ea20cb50ea9a9ba07af11184fad20dc21b522`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1782172800'
# Wed, 24 Jun 2026 01:14:25 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:55f193d6691f14cc10d6580d69d5e9df4cd7390a771f2807ff18665a2262556f`  
		Last Modified: Wed, 24 Jun 2026 00:28:16 GMT  
		Size: 48.5 MB (48491840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd612fe16d38dacb644958cb75bc8689c2930162cb66a8e5cc083857162e4ca`  
		Last Modified: Wed, 24 Jun 2026 01:14:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f6f186f2ed267deb19398dd212cc4f59a11b3bb99335e085cb16708afe6bfff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205518027e61d2aa3b9eb1ba3ed96427f9cb9173c076003af91077ff5e66c4c4`

```dockerfile
```

-	Layers:
	-	`sha256:663de8de09173d08f6e3ee6db53d41dbe9681822caec674442f2ddcb4fb3cd36`  
		Last Modified: Wed, 24 Jun 2026 01:14:35 GMT  
		Size: 3.2 MB (3152168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1445b31fd8336cc3ec067be4f9e4cded583adfbf8f7a4e05aa92fda86202468f`  
		Last Modified: Wed, 24 Jun 2026 01:14:35 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
