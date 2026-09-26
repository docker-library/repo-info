## `clojure:temurin-11-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:70eaa631c574e22fac7fa58403922024486dd84f9324c229ece2f4d249acf1c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:419fb37938ce8967dd3adfecc284436a165ff1433e5c3a82454a79c0a281cd80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196704559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b170571de30fb51643cfa4b5ddc951e7db88951dd6c263e9f1ae0566fb78afe2`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:19:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:11 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:19:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:19:11 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:22 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:20:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:20:22 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:20:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:20:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b73c87abebe36b889ae84f8a164ded61f174bd3fbca71f00f1b238ca25852f5`  
		Last Modified: Fri, 25 Sep 2026 23:20:43 GMT  
		Size: 145.9 MB (145864132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094e052dcb125c2d943114f19c6e6c9229a21dfb3c04a9449f4bbed2f23e2824`  
		Last Modified: Fri, 25 Sep 2026 23:20:40 GMT  
		Size: 18.1 MB (18086774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ae77fd14c45fb6fb401dfd22016ae36553dc0a112ea9ee829c8fc91aa3e530`  
		Last Modified: Fri, 25 Sep 2026 23:20:40 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9ad2c9da2b9e5759c759b52f892a682cce54d1908899f27994e216c27d9c73fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6c69053ae25a14bc86fefc4e2ee4b10845e255bcf8aa095eff5d9e692a1bd7`

```dockerfile
```

-	Layers:
	-	`sha256:122d12cabe6db1d3c2b7ca8ef58c10e78aedcfda78f897303d49f9824e9c7d4c`  
		Last Modified: Fri, 25 Sep 2026 23:20:39 GMT  
		Size: 2.8 MB (2757134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de8e05904329ab8de52a6510feedb222e78e77240a19baf71d8f03e9ca15982f`  
		Last Modified: Fri, 25 Sep 2026 23:20:39 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9333c78ddcd2db832666c3fdafefa296117e03189543d3ddfad4dca5eb6a8f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193123796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e6c57c4f6e038ebd03e2a92ed9d8dd188de97e66f6aeef69df947f16a4121b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:57 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:16:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:16:57 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:18:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:18:08 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:18:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:18:09 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad49aa587c1a73aae4648e3c14e339334defc0c9d7217f9de9f0fce66391b42d`  
		Last Modified: Fri, 25 Sep 2026 23:18:29 GMT  
		Size: 142.6 MB (142576544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9446d95bc9ecc88f62cec1ba6fb21b6c99efc890b18516274a40008fad7fabf`  
		Last Modified: Fri, 25 Sep 2026 23:18:26 GMT  
		Size: 17.9 MB (17908363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1e8d9e7da2f58a0b2e0cd5ef39b5376665158c7db47dc0a1e9ea674ef3f13c`  
		Last Modified: Fri, 25 Sep 2026 23:18:26 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcc49e2d350782fc72fa0700f2dc5dc22f6ab97731d2b69a5f6a866d7a2c9155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15f6864a4fbc22822843f0ef1514397dbe1a44db30aafff9eed3cd7322eef7b`

```dockerfile
```

-	Layers:
	-	`sha256:3a12e321c0e5f6cdac896a64348cd97647f3a6f4792a7c4bd05a6e1c91f8ce8a`  
		Last Modified: Fri, 25 Sep 2026 23:18:26 GMT  
		Size: 2.8 MB (2757367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fa1cc62f55417954650bcffbb3ca662c1eec68f1723c5ec3574b18dd0b8ac46`  
		Last Modified: Fri, 25 Sep 2026 23:18:26 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f57f8b4537a54af8e6275e1debbe9d6b177e788a6e6f2fc4b69dc8a329fafd2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187968262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ad2255b1cf07bc10609211a67a78561fa4c3eb9ee92a055a6dcc4cca50734f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:39:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:39:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:39:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:39:49 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:39:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:39:50 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:42:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:42:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:42:48 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:42:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:42:51 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7832be33f5be5ca91512a73659985bd243d53c718017818675483432c66cc8c6`  
		Last Modified: Sat, 19 Sep 2026 07:43:38 GMT  
		Size: 133.1 MB (133090146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99e849f12f3e3d3b9fdf2dd3461273192c1ddd5e7a7b7887005d980dc4a5548`  
		Last Modified: Sat, 19 Sep 2026 07:43:35 GMT  
		Size: 18.3 MB (18279316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34fb4f445b3fc5d026e947015e7b4e662d96f5736836817f9bb85c424dd019c`  
		Last Modified: Sat, 19 Sep 2026 07:43:35 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6b2b880cccbae2001b6b959f4d48e60c38d8a91e22787ccf92b8257943392456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5edb4ffb6f380ed28a62817822b7eeb79f68f12746569731af47c49e22e1c638`

```dockerfile
```

-	Layers:
	-	`sha256:cc718d0948063eaf382ba9b5ce1be8caa22c284457c61272c0a75abfadc55558`  
		Last Modified: Sat, 19 Sep 2026 07:43:34 GMT  
		Size: 2.8 MB (2758344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86edcf7721913141f5ae2f2559cee9483d061e7cc45635e38bf32d92ac4df7ce`  
		Last Modified: Sat, 19 Sep 2026 07:43:34 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
