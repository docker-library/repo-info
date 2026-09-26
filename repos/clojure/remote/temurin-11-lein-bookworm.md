## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:cff06550969e45be84f1b35960630887a1dd74b4d70de5ad8ee4c336d47900ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:8ebfb4e1be6ff5100bdc98eb7871c22438ed560f4d15d4ca4626f220849f53e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219029133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a227353c404182c0eaf0c90e16856434fd823753e36ae174acead6abcb23cec`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:19:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:10 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:19:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:19:10 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:20:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:20:20 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:20:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:20:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f46264d28e625d595fbbdb5a030a4fd48bad3c8f15dc3a65072ea11a8d702c6`  
		Last Modified: Fri, 25 Sep 2026 23:20:42 GMT  
		Size: 145.9 MB (145864132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e686d3d0260d02f63502dc925fc70fd9f79e3939056e5d95d257c4bfc293cd0c`  
		Last Modified: Fri, 25 Sep 2026 23:20:39 GMT  
		Size: 20.1 MB (20146322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a42dbbfd3bcfb09905120b579b387afe672d744bbb484c7ba0d1573641a2953`  
		Last Modified: Fri, 25 Sep 2026 23:20:39 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f1421d736a42bd97e5649ac96aa3d21b183404deab2c233ce7b7307fb4f044ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308b7231bcc5ff7aeafcb29eed3dc8d32b2e964f5c8219b5e7b842968f417fd9`

```dockerfile
```

-	Layers:
	-	`sha256:ec195a084ea02a39e0a6ed70ce222712bc8726b860cf9a61256ad98af7d87c74`  
		Last Modified: Fri, 25 Sep 2026 23:20:39 GMT  
		Size: 4.3 MB (4308815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b28c31a1bd6c520b8a9626deddc1dc0dd8b6b44c3ee5e79229f9ce56c2ef0188`  
		Last Modified: Fri, 25 Sep 2026 23:20:38 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1ecfc969ef5dbca83fc5b811ddf470275e18c8fc73af2f5f7a58732f8812c93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215449046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517691324261f15ef99241fde51ccf45b0351567a2e382b0fb559fd886fd9986`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:16:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:16:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:16:56 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:18:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:18:05 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:18:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:18:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951f245d632a20821addbf68912c59fc7bf50b387d6a855510f3bfa65933d5cb`  
		Last Modified: Fri, 25 Sep 2026 23:18:27 GMT  
		Size: 142.6 MB (142576545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9274bef1d93f1497a60d2f2cf536f729e3e395010586e363ad505e4a177bc8`  
		Last Modified: Fri, 25 Sep 2026 23:18:24 GMT  
		Size: 20.0 MB (19967340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ff28805b0270fae8517000b549e609193a0c7e2803c5f67a93f37387cfcd3f`  
		Last Modified: Fri, 25 Sep 2026 23:18:24 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7dd9fa7e4dcdfe0b225fe8f86e7821beab1555421b9f29799fca2b80350022cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6a724e2f79e18f6eff2c5c34dee1d51154a40785eb252162d6b35d56c81942`

```dockerfile
```

-	Layers:
	-	`sha256:265512a0189fa36ce74b17a78d09f40d9ee9bfe82c25240b8d284e195f297b27`  
		Last Modified: Fri, 25 Sep 2026 23:18:23 GMT  
		Size: 4.3 MB (4309048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34f8c291fb602b89aa06721b5e4faf58fe6e74fe674048cb6f2187c64aa8d733`  
		Last Modified: Fri, 25 Sep 2026 23:18:23 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3211c6e87e1dc977fcf65e2e822dc732645d824884d37db231f68f5adf799f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210303030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6987854573d40232cde09c5e327a0118159a5ce3c7329efc2d2ef86f73bcc0ac`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:38:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:38:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:38:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:38:11 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:38:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:38:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:41:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:41:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:41:15 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:41:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:41:19 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252ab7b8435b6276777ad755a60f33e31d7c689c6fe3226176eaed2a31cf9aca`  
		Last Modified: Sat, 19 Sep 2026 07:41:52 GMT  
		Size: 133.1 MB (133090140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f3a759e4cc810c1f2e915c5368884d798e1e15f30215e0afdc6ab4f11fa1ee`  
		Last Modified: Sat, 19 Sep 2026 07:41:49 GMT  
		Size: 20.3 MB (20348328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23afe20f33c82ec077a2471c6403ce4c7b66c69f22fcf9e5f5b6d85bd5780d67`  
		Last Modified: Sat, 19 Sep 2026 07:41:49 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e62a28d2b36c9f0fdccdaff408100bac85760bdede99303bdac6aa79afe71760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29674b6dda3fa6fed54ddf8d7d8fd1f176738dc032cff1fa1789a132f071f8d5`

```dockerfile
```

-	Layers:
	-	`sha256:6a42411e9f8967c2f65316f3f5b9f8c627f1190852dba6732b8033dee9ffed64`  
		Last Modified: Sat, 19 Sep 2026 07:41:49 GMT  
		Size: 4.3 MB (4310053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52620c2fd47882fe5cf6a785aa69fd6e2325dd368c3bcaf155cb83dd39db2aca`  
		Last Modified: Sat, 19 Sep 2026 07:41:48 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json
