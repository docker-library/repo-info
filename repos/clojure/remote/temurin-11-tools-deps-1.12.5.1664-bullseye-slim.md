## `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:ab559435d3107550a715624501eb3a4ede1bd2b058a09a6c8a9b4ad9a8948b0b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5fa1fa8e8181521852f0e5d93702529a17abc0d5203f475a06a6b7d3e093f974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232236783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0def9868375e2fbf367b4fca9e4df81b7db41df1e3040357491666eb680b2a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:26:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:26:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:26:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:26:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:26:34 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:26:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:26:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:26:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0755fb5e57af4e637349bfbd3b676e7cf88322b342f734b704f2564fcfd1e647`  
		Last Modified: Tue, 25 Aug 2026 01:27:09 GMT  
		Size: 145.9 MB (145861364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c9659b133107d76d13a7a3e122e775dc9fbcad11c415e8aae6d9dad1ebd741`  
		Last Modified: Tue, 25 Aug 2026 01:27:07 GMT  
		Size: 56.1 MB (56115047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ec4901bfd566a770c8746dcb1269bd78daaedf773be112309a75b8e6a130f9`  
		Last Modified: Tue, 25 Aug 2026 01:27:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:16285613d8568ba12db235134551f528863fb8884dd032738fbed04cfabaf2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5356987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9f2df7a15ff143258f5824d76ee3df962cf96f0dcdfcb26aae83fae042a706`

```dockerfile
```

-	Layers:
	-	`sha256:48391baf199a1891236869d3f26c97308f88721d00a3816d7a0cae8fcb985c37`  
		Last Modified: Tue, 25 Aug 2026 01:27:05 GMT  
		Size: 5.3 MB (5342566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:965c1e149049669d4ba3c298bc0c3ee6cbdf0be610277db838ec11f1363ac99a`  
		Last Modified: Tue, 25 Aug 2026 01:27:04 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4851e76931286eb35e51fcddaae93e76ce54369ad2fc80af528074edae7fabe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227597530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafe30975716f5876b92f64e0114fca5c9384522436600b821280824d044eae6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:31:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:18 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4648d39da967d8862dad578b13adc96ee6b38efcc21e524d600156f9e6d26127`  
		Last Modified: Tue, 25 Aug 2026 01:31:53 GMT  
		Size: 142.6 MB (142566585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bdf4ac888390664d24e59b9a8a3e4717d44d00ea5211a5a2c340ed196791bb`  
		Last Modified: Tue, 25 Aug 2026 01:31:51 GMT  
		Size: 56.3 MB (56281268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a9796d65f0f1f93704eddaab55bdcaf93af6fad6ecec8a7b317f8ce5d9d91b`  
		Last Modified: Tue, 25 Aug 2026 01:31:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3cfc2b4ff67e97ff6bba1307d06cee474f7c8353fb7d2e65f5c17e8a281951be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d8e130816789bd17fec4573baf32375d9662f8f09ab78752db1f07f17181b0`

```dockerfile
```

-	Layers:
	-	`sha256:4b6c49583c93a6768126649966ba4287b910c0117c02d338d65befba5f363640`  
		Last Modified: Tue, 25 Aug 2026 01:31:49 GMT  
		Size: 5.3 MB (5348916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80c17226ab0dee219d61bc63292db8b9f57f470f137367f6b893b201d243e0e4`  
		Last Modified: Tue, 25 Aug 2026 01:31:49 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
