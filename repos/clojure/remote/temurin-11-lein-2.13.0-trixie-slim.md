## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:b88640d0de5be6390176a065749afd0cb10b52120c332a64504cf186b1ccc4e3
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
$ docker pull clojure@sha256:7cadabe4283591eacc08882493285ad389486127d6d5164eed641fa47f7f3678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196965050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86291083fd5758289c0c8d2bef2e1964308448e57302ee20ea194987ca9a63de`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:16:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:16:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:16:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:16:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:16:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:16:31 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:17:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:17:49 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:17:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:17:51 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46d01573107e4045c09fdebcab35e698e971566d14ff28007240b6a680eef22`  
		Last Modified: Wed, 21 Oct 2026 01:18:11 GMT  
		Size: 145.9 MB (145864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5b10dcc7f1ca596c3b18cc75e37c620e544a582c09803c4e993063ebda70e8`  
		Last Modified: Wed, 21 Oct 2026 01:18:08 GMT  
		Size: 16.7 MB (16741689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977700632184ec42b4d1adec4abb5b6663a526e583095ff16bdd9cfd90466b89`  
		Last Modified: Wed, 21 Oct 2026 01:18:07 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:66c26635e63e54c52b4e5277de51cfc96aefcaea872cd4e4712b1cbc4a0ebf42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e575b78d366d5112499632f5e290a08365d35878c52e094dd17e5594385607e4`

```dockerfile
```

-	Layers:
	-	`sha256:275258c68ca14c0f6510132e8993b494b5d8ee7635e9ff23f3d61052871eae1d`  
		Last Modified: Wed, 21 Oct 2026 01:18:07 GMT  
		Size: 2.4 MB (2391270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0b313577d3e370c2d3efa67c63973d1da18bc6938b6af5bdadcf9af7c47a808`  
		Last Modified: Wed, 21 Oct 2026 01:18:07 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:27f159f47400be0b040513cea1b30a54a75991734ff3a6435c609bc9a01ffb12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194000628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a24f8624c00c474076f65383986c00de7ae2f64a3a1dafdcbe07c2a5ce5fe4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:43 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:22:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:22:43 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:24:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:24:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:24:01 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:24:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:24:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0eb5eec95a229cb1d35460b55c104e23d090453f935ef87d1e590e3f508f42`  
		Last Modified: Wed, 21 Oct 2026 01:24:23 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d38c9d9666538cb344187879cebdc1523fa999a12be91a2b57d8ab83fe6a95e`  
		Last Modified: Wed, 21 Oct 2026 01:24:20 GMT  
		Size: 16.7 MB (16708340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7703491f7cebdb137dabbf0c1347ee6c1e6d4135196c75417f14581c2666dd8d`  
		Last Modified: Wed, 21 Oct 2026 01:24:20 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c0edeaedefbca01135c961bacd3fd4ca1a82ab5600dee3692e6b376a5e661159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7902a13b993b9cabae19033a22d7cf0cb80a629d09ffba4651e0323f7fb500f`

```dockerfile
```

-	Layers:
	-	`sha256:2e4fcc5c91c5e5ea41ff2fa462113240563df3c31b2b77fd994cda4b040fb55b`  
		Last Modified: Wed, 21 Oct 2026 01:24:19 GMT  
		Size: 2.4 MB (2391498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:428da6331484bb7670b2dd46fe3ec2beb09bf38535611b1bf3bbfc1a98a230db`  
		Last Modified: Wed, 21 Oct 2026 01:24:19 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5e10d1115d2d1384a266fdae1e3be69fe14dc9ff9895e6f105da4274261c3e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188044068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb33fa844c037f5f4f50944a77e653fefc9a942894da301de446c01292decb34`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:24:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:24:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:24:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:24:53 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:24:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:24:53 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:28:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:28:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:28:27 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:28:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:28:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2490f42e1ec3b90b66636232de8cc5ad5014f03d8004248781144439cbfae14`  
		Last Modified: Sat, 17 Oct 2026 05:29:13 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36391a2ca6424c5d8f9d8722f5b6f5c342fccd390603ad4c73ac2b7775bec79b`  
		Last Modified: Sat, 17 Oct 2026 05:29:11 GMT  
		Size: 16.8 MB (16782076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5dd081f84985817f091ec16bfdf9fc8fd044235ad841f1d93118374ac880113`  
		Last Modified: Sat, 17 Oct 2026 05:29:10 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1dccaf0374d1b4c703c71c63925c4073809ccbe9471828fa92396af0c7f454f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3082d20509092bde8f2bd9df2fc9b078606979b118e2c6d4ff405f4aa60b65`

```dockerfile
```

-	Layers:
	-	`sha256:d3b65676c2297d9f892a7dee7f17bc242b3f770555abc224118d07b4639e6fab`  
		Last Modified: Sat, 17 Oct 2026 05:29:10 GMT  
		Size: 2.4 MB (2392912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab23f13da84da4fecadee955a4c4cc95db8fd5f0a2623544ac7c6e4c30fc406`  
		Last Modified: Sat, 17 Oct 2026 05:29:10 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json
