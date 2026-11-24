## `clojure:temurin-8-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:0c113f653687b7c88e24e883c76bd7488f31705adb608d2ff53e4f158408bbdb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - linux; amd64

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

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9c344c000e66eac96479ff55ec282f51c3656ba5234e22598766e2bfbf41942c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193905529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010da166d791c82e5dbc414c20234413fc3d83684b710186282be969b75435e6`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 01:28:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:28:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:28:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:28:47 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:28:48 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:29:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:29:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:29:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fec40a67f6ef244b22a16f1d0b846c3743204e62ea590c041feb53fd5c58f4`  
		Last Modified: Fri, 20 Nov 2026 01:30:45 GMT  
		Size: 52.7 MB (52689160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fff66f7ffda6a436603a7517b93af51541d81c5efb57dcce6577519c92ef8fb`  
		Last Modified: Fri, 20 Nov 2026 01:30:47 GMT  
		Size: 88.0 MB (87990134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157cd94f95b6e795d3048cc8ec594dda653d1362cfe11f8f20c34b8ab6f6bb4f`  
		Last Modified: Fri, 20 Nov 2026 01:30:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c70d23d989942f28405be5a64c6b4a8e97798f0d3984f2e0f2ce79024f58f177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7616507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a2e788b1590fbf9c80b9930fbd0ddd736c55cf7c25e8536cd853527c4f2739`

```dockerfile
```

-	Layers:
	-	`sha256:b114ef4774ae5e0dc889bf731cdab49f72e7879a678d2d1194b7bc9ce59a247a`  
		Last Modified: Fri, 20 Nov 2026 01:30:43 GMT  
		Size: 7.6 MB (7602135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c0239e9d2faaa3b56ca47d4454a325503890fb8fa543582146927336fab9660`  
		Last Modified: Fri, 20 Nov 2026 01:30:43 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
