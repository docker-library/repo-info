## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:adba5de415e023a8ad308db1125281223bc234547c21f5e1de79747ea3a1e0b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:23a657e99bb4caf8b8cdbaf4ac81a8e3d78ad01125ed204c6a8b3183e50f2a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244632621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d598d9203bf87e17da72e04e9e3fdb7548c4cfc44a75fad1a405883a6a8b3498`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:49:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:02 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0c0bc5e978ccf58af344089f24f54708689ba553bf13467ec53d681fa0200f`  
		Last Modified: Tue, 04 Aug 2026 02:49:41 GMT  
		Size: 145.9 MB (145886280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044b9c51456344dc9c458ed0b982840a806c2e55049ce3c9ed6c6de6b3ecc1d`  
		Last Modified: Tue, 04 Aug 2026 02:49:40 GMT  
		Size: 69.0 MB (68964790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c83d9e07d72088be94fb44f2a6bd861e4dcdfc826d88de27ace41cdfff31f4`  
		Last Modified: Tue, 04 Aug 2026 02:49:37 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d7a2336b3c6b8f7213b17176233f28e1c6cc981373ab2455df5c4edaa474262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8e7a9b47c09fb753b123f6c4c4c2673b09dc0be814faf03da93fd94e2e30cb`

```dockerfile
```

-	Layers:
	-	`sha256:3d40f7ae134abdaa1a6c9ebf0aa037a42991bc41477715988d3506664c1ea2c3`  
		Last Modified: Tue, 04 Aug 2026 02:49:37 GMT  
		Size: 5.3 MB (5276880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e3cb2b7b3eb595986f9633cce062114cb1958d8fa40cfbef33db31acbcf825a`  
		Last Modified: Tue, 04 Aug 2026 02:49:37 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:66c5c6c22e6e42e5740003fbe87c2f95a580c4d72c0619c6ca04c912b9481747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a144a4bafceb830a58f1d5dec0fbe068946abe01e34690b22b482ef28db8bb8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:49:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:15 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbced9698c20cd6b25450e56a71278a476db9133fe8836656d8fe4c979c9ec6b`  
		Last Modified: Tue, 04 Aug 2026 02:49:55 GMT  
		Size: 142.6 MB (142582246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff93198b3dc37b3b027691738ef0d69dae6c4f2472d9ae6c4990288edc92d1dc`  
		Last Modified: Tue, 04 Aug 2026 02:49:54 GMT  
		Size: 68.8 MB (68786348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a7ec9e8e24cefd816bd9fc867264c18205c42b7c22cefff3359ed041ef51d6`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c1243be8e3a7d7f6ef7f1d3b1928af6f4bb10323763981d9dc136d0d4c7efd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f21d43f1849168141590db26255b4797cd73ed72a21cc69eeada36470679e3`

```dockerfile
```

-	Layers:
	-	`sha256:e750c6b2a89d86f6356262efbc4e1975852b384739079a190d4dcd0b41f8e059`  
		Last Modified: Tue, 04 Aug 2026 02:49:52 GMT  
		Size: 5.3 MB (5283259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60431d9959d87c803d5c99d79e3c5aaacb902f1f68c7995932cec2ad38bf425f`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:74e2ab9bf1b1b2f103a2edac91628b1391c18a89ad2567188a866474191d2173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241087367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79a33659c4646baf82000f156ad002b811a006f53a4ce8ffee89f85f4484087`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 04:58:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:58:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:58:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:58:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:58:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:05:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:05:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:05:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93730265af21325f754e83e8547865c3c756bd4c967fa218e90a090a099b51be`  
		Last Modified: Tue, 04 Aug 2026 05:02:10 GMT  
		Size: 133.1 MB (133109682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ae4e17f00afc126cee3b1f8cc33a06c847c320d9c8fb09757d0f72452fdd88`  
		Last Modified: Tue, 04 Aug 2026 05:06:23 GMT  
		Size: 74.4 MB (74375561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c76aa96b717a3880a16ed5b6dbcbb071789f1394f30f64962b762476b6b18`  
		Last Modified: Tue, 04 Aug 2026 05:06:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8766fb1dbbe705a4e61870907d95023cccc4b47fcbdeebf2cdb3caec6d174a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4250b76c8bb61299c56b347c690a773cb21d6458006494a0e3d5294ccce3a396`

```dockerfile
```

-	Layers:
	-	`sha256:fe9c692ecb7036ed29e31c2ed9dcab78a8308b577afaf7870e9517a96d7e3732`  
		Last Modified: Tue, 04 Aug 2026 05:06:21 GMT  
		Size: 5.3 MB (5280636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d49b43d4d0c6af80f2d474e068f4fe9facfa4904f937f16ab16e5674b9283044`  
		Last Modified: Tue, 04 Aug 2026 05:06:21 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:389a84974b6763c48442c38b9a2f61dcdcc202e9bd181bfd660a4bcb1729fa29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226445196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1678e32153e927d2849ad8ce88f8e87cc434df232308b0b45bba08a328a15e7a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:50:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:15 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:52:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:52:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73629417056681a3f1d0d70034e895694dd8530140c9a99539efcfc2ecf6423d`  
		Last Modified: Tue, 04 Aug 2026 02:52:14 GMT  
		Size: 126.7 MB (126652393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07e8e4e46fa564ed57341db007b0a9ec294bb80f439157d41753e445082cf8d`  
		Last Modified: Tue, 04 Aug 2026 02:53:13 GMT  
		Size: 69.9 MB (69945525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ce2619bdbdd3dbc54e11a1a893c5c6d254106e2dbc81d8504367a6af65377a`  
		Last Modified: Tue, 04 Aug 2026 02:53:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9b76c4d5df4ada2773b4feab46b1138f459b91c3b9322202c97e16ee53ea3f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b0be037692c977e91aaeec6304fa16f334681f49f5e4ff0bcb29c6614d1c38`

```dockerfile
```

-	Layers:
	-	`sha256:25126e92b7053fbe01707fdf8e0e08615eb0c9c42887ad63c0ba90de45ea53b4`  
		Last Modified: Tue, 04 Aug 2026 02:53:12 GMT  
		Size: 5.3 MB (5272808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cfb252133f04aafa171bd945efd7fba4793d83d8510c45902446bb712b4bc35`  
		Last Modified: Tue, 04 Aug 2026 02:53:11 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json
