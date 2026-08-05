## `clojure:temurin-8-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:cf7c761577332cae237994c6a228af7b3604f57a679bc7500f90734d02e07d25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ef6b9b904291762b24bda48d06a75fd6aa7e3eaa64e6c5f5f8efe78ff6db8c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141565134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e065b86fbc17a0bf2067f3b7f0edcecd623db542716af04077ff4c4273fdc2ae`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:17:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:17:38 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:17:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:17:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:17:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23198d1d3baaceff335d97f592d36e860ffa073b929d3e7e77725231f3d3eb48`  
		Last Modified: Wed, 05 Aug 2026 01:18:06 GMT  
		Size: 55.2 MB (55198702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6168b839e2a6d4a3644dd978b55a94fdb5bac66b6c97c088e95d209b62cc8d08`  
		Last Modified: Wed, 05 Aug 2026 01:18:06 GMT  
		Size: 56.1 MB (56106166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd686bae7b00c45b61342856fa7c3980bacde98b1a952ffc44e694142a5b2171`  
		Last Modified: Wed, 05 Aug 2026 01:18:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:70642fd9c837e3f93304d8edf7f7ec7ff5c306adb2e2686a6175290dd4282a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e072bb9a3922685e9a77f115c2f70b440caef2d0bccd6df0cad52113bd3633`

```dockerfile
```

-	Layers:
	-	`sha256:f68c77108307081426bf999bd745be244047584a92be3cfb99787273e5baaff4`  
		Last Modified: Wed, 05 Aug 2026 01:18:04 GMT  
		Size: 5.4 MB (5438209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ab5aec795d40f11b1ca13bbd950796ea2fb14822b120f806919ec3819c2d4a9`  
		Last Modified: Wed, 05 Aug 2026 01:18:03 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:713feb4e4db39eef021e03453806309cc66e90ff622811a5e08ca278e7f7280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139298245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99aa008c6c77364c1ed1cec6e34ade5df10a761c9120e8decc2c87dfe2a26349`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:23:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:49 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8178b6f48978fd82dec88b4ae4d5d1aa125480dd1196ee95082b48aaec75a813`  
		Last Modified: Wed, 05 Aug 2026 01:24:18 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b182ea2c53e9a0bdb1d731f112ce0792ea3699b5567be6e3e81b20188f5682`  
		Last Modified: Wed, 05 Aug 2026 01:24:18 GMT  
		Size: 56.3 MB (56275760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f707b7487dca5fa626490953b1117fa3c2760a83a8fcc81e7acd00d618fdba`  
		Last Modified: Wed, 05 Aug 2026 01:24:16 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6de9326c7788be7aa79060cc17ab24cdf1dee4f57ec63cae9d0bfdcdaa6e5168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f974f2e2d3e706a346c9916fb1bdaee014c9528338a74e50a18dceea398b23`

```dockerfile
```

-	Layers:
	-	`sha256:73f880be8ea9f09eb13f891b0771211a1b375c609f8a07c46bfeeea5f8ad3387`  
		Last Modified: Wed, 05 Aug 2026 01:24:16 GMT  
		Size: 5.4 MB (5444641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d55ec8cc971d7a1f5fb82379dfdc6dad756bd9009377c7865bc3610f30fbff9`  
		Last Modified: Wed, 05 Aug 2026 01:24:16 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
