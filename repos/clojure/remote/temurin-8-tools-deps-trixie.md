## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:a8a714af4b06e6977c145a6663953cb27e2a83d3048ce3822594986d0f9e695f
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
$ docker pull clojure@sha256:9051bc2ae6a2c51cf8162a6c9d017f48397409acedba38c4c1acdd67ca84c931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187041898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b266da01bc713334a28942344f71f882bdbeb3eab050afec12a5eb36b1e3bd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:25:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:25:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:25:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:25:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:25:05 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:25:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:25:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:25:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94538da68cecfe99bda707a52d300aaa24e286da4a083c2245247d747a52d8cd`  
		Last Modified: Tue, 25 Aug 2026 01:25:39 GMT  
		Size: 55.2 MB (55164404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7603736c45f589c317c329d65cd16c75962a0ff3d67b97ff4aff021a106b6b`  
		Last Modified: Tue, 25 Aug 2026 01:25:39 GMT  
		Size: 82.5 MB (82539021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4639ac29ba3079da67bfe9d6bcecac1485df0f5ae7d3efb04194e6756591574c`  
		Last Modified: Tue, 25 Aug 2026 01:25:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d0c4d93aa7a0e5eacab42fa70bb3036ab183f19a79476cb5aec1f31d56d6233b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fee3f46b308a28053008cd20bdc0c2b7f5d48df4721cb6bc26889ae0a6d772`

```dockerfile
```

-	Layers:
	-	`sha256:beb81a932d484ad6cef8fb24d907f069ad2291edd2b54e29ddb80020d7a314b5`  
		Last Modified: Tue, 25 Aug 2026 01:25:37 GMT  
		Size: 7.6 MB (7594231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dca6500efa0e1c45418793b41f2362b5961dbd6a49de5dc07e24fc3886eb3b80`  
		Last Modified: Tue, 25 Aug 2026 01:25:36 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:271b895b5a58f463cff87c9093903229688b0382b94ef0b9d7122bd0d0f3d089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186327551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7917847dfe8f432269747ee9583ed18ad9c426f86a0badb9e75feb4e1d610866`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:29:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:29:04 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e9f125e36d705b15766a4469f0f64813d718f07d1e2ce673dfdb4a0bbc442b`  
		Last Modified: Tue, 25 Aug 2026 01:29:33 GMT  
		Size: 54.3 MB (54262743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89b0b4f3b500e3e597686bc9a616d000452ad9cce6506de423b752ae4033928`  
		Last Modified: Tue, 25 Aug 2026 01:29:41 GMT  
		Size: 82.4 MB (82359308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7457054d7ad354073ce40d8802bd51bc7814ae6b8738bc7eb0d15074bcf91dba`  
		Last Modified: Tue, 25 Aug 2026 01:29:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:540313267a18adb5976fe350b7d4ff1baf1f2ad0b2dd77e5baba8e88c5f6d0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7615766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be66ac9bce5328f3ac86c05a4bd9d2c8b60efa89101de07e63d2f9950d3507`

```dockerfile
```

-	Layers:
	-	`sha256:d3889047e4696850a94c815fe8de58b619dcabd0622428d1f842fb546443eb57`  
		Last Modified: Tue, 25 Aug 2026 01:29:39 GMT  
		Size: 7.6 MB (7601324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68280fe34c45876f7fee482129627639c2a195caec130f9d6cb0b0a63a3c2713`  
		Last Modified: Tue, 25 Aug 2026 01:29:39 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d13829f43a5453c739d3a3882631c8d4c63f9c9b09eeab2af3aae13496a5e55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193786499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0040a943d864366a15929de048781377efb26250702c79b618a050df31717783`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:03:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:03:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:03:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:03:37 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:03:37 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:04:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:04:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:04:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f356a0a4cc51d767dcf63830ed2624e81fa14a0cadf85fd05165167b4ab1a6`  
		Last Modified: Tue, 25 Aug 2026 08:05:13 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b77164e26313dc96b6a31cc861c33cdb244a903347b4fb8dbdc688adfceb675`  
		Last Modified: Tue, 25 Aug 2026 08:05:14 GMT  
		Size: 88.0 MB (87950910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfcd56190f5988d7ff6a1494ddcd4c848a219b7936863b84bacc9c65e52000c`  
		Last Modified: Tue, 25 Aug 2026 08:05:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c0ab707d844513c2b76ac6f6c900996140599733095939ef5ea8e624a1fdc74f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3785b7167bd190824bd63d19fbcedde3e2ce1b331db95c55973f5ae4488c8231`

```dockerfile
```

-	Layers:
	-	`sha256:f254c271847f7e33e4b3fe42e45877730445b12f733a66a0c5613a56c0c79f5d`  
		Last Modified: Tue, 25 Aug 2026 08:05:11 GMT  
		Size: 7.6 MB (7599247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e97861656e7eb981dd715969951d22169c3b2dd5c82c637c6e6dcdccd4ab4e31`  
		Last Modified: Tue, 25 Aug 2026 08:05:11 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
