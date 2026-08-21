## `clojure:temurin-21-lein-bullseye`

```console
$ docker pull clojure@sha256:be03f18e845bbadc18ccb1f51588ffda2b696e438bb74230a7b3e82a9b14d760
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:0630bdb73c564c675ed686fc41fd5940a3567f76a66a7c4b43b7c0d00a6de412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233353045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6d8ffe70b93a6998ea8a2d2493c8dbc18a5a34e8b4417c7dd4071dae8f3aed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:16:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:16:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:16:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:16:16 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:16:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:16:16 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:17:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:17:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:17:20 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:17:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:17:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:17:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:17:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2987c8d478afa6cdd2bceacffba07249023bee2024cc114e12a5a36d9748f26`  
		Last Modified: Fri, 21 Aug 2026 19:17:42 GMT  
		Size: 158.1 MB (158120380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d90f2df28a02de0fd768887079c0971876db589eeb3c53899c10e8ea64758f7`  
		Last Modified: Fri, 21 Aug 2026 19:17:39 GMT  
		Size: 16.9 MB (16940019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d417c738eb6c27178f5faa66c80af6c29137b36b5fa95841ae9f33d2b1b24274`  
		Last Modified: Fri, 21 Aug 2026 19:17:39 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0329d91f6253af34a75425b405dc8239ac3cb5168ee32d783fef7a15e0d972`  
		Last Modified: Fri, 21 Aug 2026 19:17:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:83a9b4c414cde19c759f8895a9964c493f09b50e10ed55c6cd265be771a56292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00554400fedcc598d5865d63fc18d380355f889c86386e20dffba3cb89daebb5`

```dockerfile
```

-	Layers:
	-	`sha256:c682ca950f410d401af9e506be36f30b0b72eb36fec56a7c5ff41257065fd19d`  
		Last Modified: Fri, 21 Aug 2026 19:17:39 GMT  
		Size: 4.5 MB (4508080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:405d2fc0287a3a3e8de4d07aa8fa5ce196a12a7db4298b4fa079f3b837fac389`  
		Last Modified: Fri, 21 Aug 2026 19:17:38 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:72b43588fab0ea58046cbf286499a9d3cf08dfe7553974ccbd4c2ea31765c55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 MB (230109002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5330136f094a533ed94b0c11cf970a6c0eb200b485583218c774c5a4a41d3b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:05:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:05:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:05:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:05:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:05:39 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:06:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:06:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:06:51 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:06:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:06:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:06:53 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:06:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a30a27f1a58158e99870599528e36de852a1c384484f21311d89d166314ef2d`  
		Last Modified: Fri, 21 Aug 2026 19:07:17 GMT  
		Size: 156.4 MB (156401970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523771c41d2bfebbc4747b601fd40fff853051157767e3285eb385860204c176`  
		Last Modified: Fri, 21 Aug 2026 19:07:14 GMT  
		Size: 16.9 MB (16930518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd841aa3a872ed8e65a564b2b5c88aadbc69cf3f94ff5bda1b713d66a9bbfe3d`  
		Last Modified: Fri, 21 Aug 2026 19:07:14 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d986ec0512bbb9134aedb95fbec3a33e2200b490aa46026992590180f9905379`  
		Last Modified: Fri, 21 Aug 2026 19:07:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f04385e8ede9c577ec9fb714bcec9f0dc56712a67822cebfa00c694699af5898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4524913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7db289942d9fdc514d4f3dc5c52be5e05466ac24e712fd84bd58120964e23d4`

```dockerfile
```

-	Layers:
	-	`sha256:d44407bfec9b68a40eba810c577f1ca9aab95c8cfe7c250c11e4c4287c8a4b01`  
		Last Modified: Fri, 21 Aug 2026 19:07:14 GMT  
		Size: 4.5 MB (4507054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51680f16b1de0b61ee605b459b9b97d71551d19312e37851461de8b2a6ff1a81`  
		Last Modified: Fri, 21 Aug 2026 19:07:13 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
