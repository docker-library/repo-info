## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:bbb175e9fb2019176732284dfd12a67b75986e5122a3e933863530e80b355f9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1ba2f7e02bf565efbbb82b5863bf1208920de7a4038505e4769691013c8040db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199934321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d00f6d219bee75cc343108ccd86a197ea55c9390c3b109f4614d5119861cdd7`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:25:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:25:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:25:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:25:52 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:25:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:35 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:48 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:50 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e23f9558b34369b856cc6c6a4369da77b9087a440760f0889a72646220862d`  
		Last Modified: Fri, 02 Oct 2026 02:26:37 GMT  
		Size: 145.9 MB (145864271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ee0dab045aa357ff12fdeff1e3c1497dee06efe6e4fccf9377c7d9ac3a8bf9`  
		Last Modified: Fri, 02 Oct 2026 02:45:00 GMT  
		Size: 19.7 MB (19724383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e371194eda89824af530192d7e4ad1636c59057be3aafe27db529551bcbae3e3`  
		Last Modified: Fri, 02 Oct 2026 02:45:00 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:94f7e8166a588ab8e2b8802020d47e6032671e93f9d184b1322c54318d283772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ce4f67be5967507fed944885aff8e1b235c0a9ab90d5e5b57a567e107effe9`

```dockerfile
```

-	Layers:
	-	`sha256:7b40005171840a6c18509cbbfab4325defb4783de872aaaa7ec9cc6111dad6f1`  
		Last Modified: Fri, 02 Oct 2026 02:45:00 GMT  
		Size: 2.4 MB (2392547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae85fff2e5f2edc233058ec4685867ffd6d758ccd9b2239e3c9039289823615c`  
		Last Modified: Fri, 02 Oct 2026 02:45:00 GMT  
		Size: 14.8 KB (14808 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:acf65460acce88ecb2db745470724ccbfd43b161c60d79d8153167dcb83681b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 MB (197327006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4253b12d8e188c8a8f55e70036efb93806844f2d91e3a4dd8545917efa1e1db4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:43:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:31 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:50 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:52 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834759166ea2d094b5da584e725a19af5612b1fb805e639e4434a447c99daa6a`  
		Last Modified: Fri, 02 Oct 2026 02:45:11 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b2baab24dd77d4e0b863e1811b10cdd36e5090e85ddac08232d841eba3835b`  
		Last Modified: Fri, 02 Oct 2026 02:45:09 GMT  
		Size: 20.0 MB (20045549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8acb9bd89c71674fe977021854e7b2ce7af18b5fe39a8cde2f1c2a7c55b8ea`  
		Last Modified: Fri, 02 Oct 2026 02:45:08 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5aca604fd4e20ba32afbe6b3d5a4f87e3ca973288fcfcd71313369f842599059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d2a5f3a52be19a8040f1ab5684cfd33747381c749820ac4fe33ead7f83d81aa`

```dockerfile
```

-	Layers:
	-	`sha256:262da61568c9449376259e2cde260c31a83781114afa3a8e3b5a573d51af7b69`  
		Last Modified: Fri, 02 Oct 2026 02:45:08 GMT  
		Size: 2.4 MB (2392775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18581afbe55412805f5594e130e2e52dc0f39f1ae0112246ddf956662a293b4b`  
		Last Modified: Fri, 02 Oct 2026 02:45:08 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:77f52f8d7c66d7df5574b0782f3876d3e9737c85e1f225b8b66dd7e014e536d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188033268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7980bc5c68c3b5708743a8d734e0cc159ce11b14b3dc5d4389ba749c0dcec9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:10:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:10:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:10:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:10:49 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:10:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:10:50 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:13:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:13:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:13:34 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:13:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:13:38 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f015418d8b6088bf9375f9aae3d0891166138c6a5b2e04f870db3900f3ba8bf`  
		Last Modified: Sat, 26 Sep 2026 04:14:12 GMT  
		Size: 133.1 MB (133094693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5990a9ba7489d3d8ff203be1836ed2468a53e55c4ae3073f78f6e33198b45c8`  
		Last Modified: Sat, 26 Sep 2026 04:14:10 GMT  
		Size: 16.8 MB (16782086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e7c86294d4471bda3b851c4dfdcd3607395b3f3080386e8e2b61a6e1419ce3`  
		Last Modified: Sat, 26 Sep 2026 04:14:09 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f44e8c1af7bfc6ace091818d9dc6913877eab356997298bcef60338f7c51628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62461ed786b72efd7b9e6aeca532b3b666305bd93caec3535ebc450ab02b8f1b`

```dockerfile
```

-	Layers:
	-	`sha256:8e0fc6b2da0bfd3845304234bceb3be8fa5552611ff11e479891a89e071ad883`  
		Last Modified: Sat, 26 Sep 2026 04:14:09 GMT  
		Size: 2.4 MB (2392912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2623ef4296ece333d405ac0d5f2eee926f6e576e2cb3c26b124b603b77ad25e7`  
		Last Modified: Sat, 26 Sep 2026 04:14:09 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
