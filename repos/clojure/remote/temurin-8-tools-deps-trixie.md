## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:e6c19ca4dd0edbe8f68f47167337dbca9f6a03b81173d9fef6559f5225b9de8f
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
$ docker pull clojure@sha256:f47c085b137056b3606e0bce25b7ca16261488d3e9697425f68f60fdfab78101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187049835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a385b03306c05e7d9c5683f3f9de81cf5438030f2eb3f58b819e39222bab60`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:47:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:47:11 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f871914b00e032d265831c7168cbbd975bc28669bcf08683aab62c4f9318c8fc`  
		Last Modified: Tue, 04 Aug 2026 02:47:46 GMT  
		Size: 55.2 MB (55198697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb57d02e3c2f7e13598e64a8286ef28aed786bf89bcb624f9c54696b53e329a`  
		Last Modified: Tue, 04 Aug 2026 02:47:47 GMT  
		Size: 82.5 MB (82537921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48972414828b1fbd230a6f2be90419e01ac9803efe645d9a9a141323ea05f14`  
		Last Modified: Tue, 04 Aug 2026 02:47:43 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ee3b69387bd16c6884abdb60a163034f9789bcd9601171027daad5149ab8ee89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac8c541bbeda2f2b394395a857e6a078a69e570e1b8504202fc53e896ca0eeb`

```dockerfile
```

-	Layers:
	-	`sha256:106aafd64cfd9d07e3fcb2ddf21cddaf1cd9541a899eaa2f2b4f1f79974d78d1`  
		Last Modified: Tue, 04 Aug 2026 02:47:44 GMT  
		Size: 7.6 MB (7589253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb978a3242fed8dc8c75c800b1de5f3f7d1cd3230d39c58773a54b6de39a6f52`  
		Last Modified: Tue, 04 Aug 2026 02:47:43 GMT  
		Size: 14.3 KB (14322 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:aed1aee598236604449513a5f13d0472f4fb15011b5db61bca4804ecca2b6508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186306282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3c4d07b4fc9bf49f28f3f1436dea2b0dae641a7486c7e5150d61bc716eaa2d8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:47:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:47:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82886b6234706d8d7da883075e51339dc0f3d06c043734fb39a2bb151870588e`  
		Last Modified: Tue, 04 Aug 2026 02:47:58 GMT  
		Size: 54.3 MB (54272922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92b2e2be84327bb49a16ac14aefe274543f4f517fb130fa48608cca86468e35`  
		Last Modified: Tue, 04 Aug 2026 02:47:59 GMT  
		Size: 82.4 MB (82358530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f21c17a639640b2b735b6e8df2b8e87c5866c1328ddf640661d5f6424c75812`  
		Last Modified: Tue, 04 Aug 2026 02:47:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9a60b9ce39249f4f3f2e4dfd6077f6e64648bdcc3bdac0c0ae92281c7035a355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac786f4684f571651b024d1c7099ed19db27fd33b877dba20cd178f3e4bbb07`

```dockerfile
```

-	Layers:
	-	`sha256:233394a2f4fe814871bfd510a57e8e2fae65aa6dceacfd1800e1f839fe81f781`  
		Last Modified: Tue, 04 Aug 2026 02:47:56 GMT  
		Size: 7.6 MB (7596346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac95d7aea2edccd1381e22694a6fcf6c59498b00ce432a952235362ef39777e6`  
		Last Modified: Tue, 04 Aug 2026 02:47:56 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a4112d0d0a369fb169a9c85d610b7a6d486d5482fc190a627d1f5d8d902f3a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193753763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d36376d22bdd6a5afd8426fb03834caf6f0eef86493fc661215a6f33325e72b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 04:49:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:49:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:49:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:49:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:49:00 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:49:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 04:49:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 04:49:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65838029f62ecf45f6b836a5d865d86494cd601600a74cea7b740a4838495cc`  
		Last Modified: Tue, 04 Aug 2026 04:50:38 GMT  
		Size: 52.7 MB (52669137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6e764a5574b5e5cbd91bf8fbbd6b605077f06a237dc9146892dc66562ce7d2`  
		Last Modified: Tue, 04 Aug 2026 04:50:38 GMT  
		Size: 87.9 MB (87949968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2729e73cb8f1e1880e3732b40fa1dcabd7a8cb104781e19f4f40ec31da575e00`  
		Last Modified: Tue, 04 Aug 2026 04:50:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a71c4bbd43ffa301b3feaee8add51226823dc15c9cb1fcd7471e1de14f6b75e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465c439570a3dbb7352a72042605ab9469365f6d1004f1021693e8559f66fb66`

```dockerfile
```

-	Layers:
	-	`sha256:2b716f021c83ee52516606294972464f95091adaec2119f1d9cbb980f35a2e44`  
		Last Modified: Tue, 04 Aug 2026 04:50:35 GMT  
		Size: 7.6 MB (7594269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137eb8e338db113f92256c544eff2b6a7386609af4d7b04c02c7ca99d1d35804`  
		Last Modified: Tue, 04 Aug 2026 04:50:35 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
