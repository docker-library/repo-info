## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:f1254aa981b1041596541ac5d3191d26f28b23d74156096a44aad0af8a27847f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d13a0024b1b2878a1d72f7f84413ca72a933090327886e56dfc42ad9971a635b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187200536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c36d477267b33314d4afd40a35e94b818e2c9c101099d75bc65f6d019eeba7e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:08:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:08:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:08:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:08:37 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:08:37 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:08:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:08:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:08:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915d3371a75bbea0e91bcaaf0911e573bc173df842870b032aef9b169e3d24e7`  
		Last Modified: Tue, 24 Nov 2026 05:09:14 GMT  
		Size: 55.2 MB (55207914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3803374827b4abcfdcf0fb869fd5c7efce08d8652cded70571a782f8603643a4`  
		Last Modified: Tue, 24 Nov 2026 05:09:15 GMT  
		Size: 82.6 MB (82582694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778b1b7d28ed08d954feaf33f4d58a7beac5f2d7dc5f4a47c66c547e23d6d888`  
		Last Modified: Tue, 24 Nov 2026 05:09:12 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:51c1853a57cd51383361d1eeb3bf98c634e0ffff21129b7f63c072edabf2e97c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a223861c2a204049a689bdb5bce7cc669048701430033fdda6d863ba5a4a31`

```dockerfile
```

-	Layers:
	-	`sha256:2e91597a932aa59502e8558cfca0dbbe883f6b429e239b05464b8516a3e59855`  
		Last Modified: Tue, 24 Nov 2026 05:09:12 GMT  
		Size: 7.6 MB (7596369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4ef86951f10e479e850a338c04b0fabfe24454e25583e9b4e5aa8ec06c2eb29`  
		Last Modified: Tue, 24 Nov 2026 05:09:12 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a233a888c1a3017fab5845af3340d2800af14daea8d3ec23bc89ca51455f0e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186452661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992b7d0ab4bd537702f3b158bcac56292a0108e93e6fca5d406a1139c5668f0b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:15:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:15:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:15:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:15:56 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:15:56 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:16:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:16:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:16:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9c87a9c051db5369a551bcd683dc565a0fc814095c502e48a9936090f0b2fa`  
		Last Modified: Tue, 24 Nov 2026 05:16:33 GMT  
		Size: 54.3 MB (54270350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dedff0d9a7ae9b8b6481452334e77e0963e9710fea2215163b6205c4b3876517`  
		Last Modified: Tue, 24 Nov 2026 05:16:34 GMT  
		Size: 82.4 MB (82411583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cec0520b2c752edff5942d1cb12fda114882e3803053bd2ea3a7ccb66c52df`  
		Last Modified: Tue, 24 Nov 2026 05:16:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:64f8e5c207947d18e8bbf9ce329f390d20dbff6697688458d92510691c70c28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7617904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c5725408587e5b4ad11362198ce19b1baab694a0f4f5860aae8173df06eb15`

```dockerfile
```

-	Layers:
	-	`sha256:19962761de7e04365e2d8e6c77251193ae54d46c61a5fc3b556e6f7d0711d3f5`  
		Last Modified: Tue, 24 Nov 2026 05:16:32 GMT  
		Size: 7.6 MB (7603462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17d4b2d187c0a7cb1b4330789a0fa3991b45e4d719dc0ecbd337d3cb15b3b538`  
		Last Modified: Tue, 24 Nov 2026 05:16:31 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:5091e60e8d4cc200665eb695fcfaf7efb634ddd2f1c3e8589879a3feda64dbae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193923395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e477526711f30f677e58ccf9ac80afb818202ff378ee062f6e5210af15f62280`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:21:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:21:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:21:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:21:14 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:21:15 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:21:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:21:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:21:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491f0979be1fbd3acd76b3bbadcabf1d0590fe83e6264e1dad60572f2b466716`  
		Last Modified: Tue, 24 Nov 2026 12:22:39 GMT  
		Size: 52.7 MB (52689134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4fb0bedd81082217790d7c4b0145bfc7f75394d84f0adf703952c87055ee6f`  
		Last Modified: Tue, 24 Nov 2026 12:22:40 GMT  
		Size: 88.0 MB (88003773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2bdc91e1e756f4fe169b5073cce79cc2eaea2435f0927a48d316fdf5b4e0b6`  
		Last Modified: Tue, 24 Nov 2026 12:22:36 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1c5b2d8dd0d86862134a0b277440cc122eb69b88f466dfcbf97762753b63dc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7615751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5902b82ffd62ee5b0463f858e0f112d2cc3bf7eac6f270255e4ff6f44702ed0`

```dockerfile
```

-	Layers:
	-	`sha256:2c6c6a1bea37206eb5e049599e8d2d747507f765dd2264f2ee38c76a0ec1f660`  
		Last Modified: Tue, 24 Nov 2026 12:22:37 GMT  
		Size: 7.6 MB (7601379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:904336a6d0693bb4203b7cdc445f8c91f22c8cd9eeeccc1ec29648bf666be35f`  
		Last Modified: Tue, 24 Nov 2026 12:22:36 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
