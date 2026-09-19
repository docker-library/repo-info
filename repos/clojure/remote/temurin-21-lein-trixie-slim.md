## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:b2a79a66e39b101dfea50413ae303fc3ad2b704cf01a5455e0781c12f4910e93
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6accae9201da420501f74797504b21f280bd0972840121124843be4931aa24c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209221303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5988b647f1213ebee9a5d05dd61ed7d645a5396a283845ad48bba9519ecd99d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:16:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:16:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:16:08 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:16:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:16:08 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:17:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:17:19 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:17:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:17:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:20 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2915deb9ec308f3f05dfa4d2be1716e2a040eb1e87d83d46485151450357d`  
		Last Modified: Sat, 19 Sep 2026 01:17:40 GMT  
		Size: 158.1 MB (158120296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197f9acfe75dbc438dfe9441b6023034062f17ee38d6dc542d13834f8e3c8081`  
		Last Modified: Sat, 19 Sep 2026 01:17:37 GMT  
		Size: 16.8 MB (16754968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5636006404af625c0cb882d4e9fb06fb03ce44cd5fe0981c24ef79249398525a`  
		Last Modified: Sat, 19 Sep 2026 01:17:37 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ae71ea5a9cd0533cb7c92ee54355949dcf107abea3e5cdbf06e5f727ea64db`  
		Last Modified: Sat, 19 Sep 2026 01:17:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:89ef2bb873ad4be3622355a43f86d46b31f14b43b0a75965e9ef769aec0bdd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88d83e76d0117001fd86536fa1e5c6352b8f609a710dadcff08e5bd6353027f`

```dockerfile
```

-	Layers:
	-	`sha256:e390477a74a3b9fd25f1776f55d5fa44e4e8582fa1fc8141bad5191611bb4e85`  
		Last Modified: Sat, 19 Sep 2026 01:17:36 GMT  
		Size: 2.4 MB (2374875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c35e8598f68e8dbc0251a507f1c4495d2112f941a952a6133eb3ca1e59bebb7`  
		Last Modified: Sat, 19 Sep 2026 01:17:36 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b0ae272f738340f7852c31f4287ec25604836a7adbda54b9775723147dd18b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207819092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881364e5e7f0dec2156e4652a65bfea94052e43aa5fa8c3f2555a8be2892d017`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:23:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:11 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:23:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:23:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:24:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:24:28 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:24:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:24:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:30 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781e6a4a80ed94c2426f7476ac88a4e8ac496614c1e9aad35faea65282b2fa9a`  
		Last Modified: Sat, 19 Sep 2026 01:24:51 GMT  
		Size: 156.4 MB (156401948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb2010e019f519364efa8d1c6443d008f132241d438a1241cbad00cffa0797f`  
		Last Modified: Sat, 19 Sep 2026 01:24:48 GMT  
		Size: 16.7 MB (16711809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c282fa1adce3ff5c43f50a2c6351642786fa782962368fabf26d159ae4f2e70e`  
		Last Modified: Sat, 19 Sep 2026 01:24:48 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66b89772a1cd217196efec99d45c0d983c4f69167e20e9e609b04369c2753be`  
		Last Modified: Sat, 19 Sep 2026 01:24:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f4badc93b395c6b37cba416e8db93354945bf6437f7f8f81c8c3515305318961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2239f31408b1b638aae109b32334d6ccd91b4726664bce534e4793f7e2b02c`

```dockerfile
```

-	Layers:
	-	`sha256:43972fbc71452a71fbebceaad264b8efb64eaf2ceadff952704df4fc5be1b039`  
		Last Modified: Sat, 19 Sep 2026 01:24:47 GMT  
		Size: 2.4 MB (2374485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c2a3fa0877b1d10546cef2d4c4709ca47764ad51acbb4a2c29c3ef583f241c2`  
		Last Modified: Sat, 19 Sep 2026 01:24:47 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f0296c487f8e5c320fa37681f8b083dbd88b7fe218b672ce223b7de30f5adce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213214904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff75ee0c865817f017c8bd39431355e6e9fecdb57265f5cf0a5ceeb04cd9242`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:06:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:06:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:06:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:06:56 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:06:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:06:56 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:10:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:10:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:10:33 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:10:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:10:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:10:43 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:10:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979281c49b96086103e149ea859999065d7d8e56da642cb7c95c5f3a0934de46`  
		Last Modified: Sat, 19 Sep 2026 08:11:28 GMT  
		Size: 158.3 MB (158274938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8da980ffda8f3f2267dcb6e40dee337638114b5de7eff1828d8cc363847267`  
		Last Modified: Sat, 19 Sep 2026 08:11:25 GMT  
		Size: 16.8 MB (16783092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfa67d3772c0878ecef2849896488be0bc078546dca4c3be7369b4ce5d13cb5`  
		Last Modified: Sat, 19 Sep 2026 08:11:25 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1934ddf64121e3d3f8830e2d11b09ff19fcf00a09d10e1f0d4ab6ae30605f34c`  
		Last Modified: Sat, 19 Sep 2026 08:11:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:890697846a62993df49bcc7985c61f93f0222089bdc189a68413d1c65b78f364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06f7182dd9d3557e660ba9c973cc3ccb4c36c4392daf691e842c4d10d243271`

```dockerfile
```

-	Layers:
	-	`sha256:17e011edb7896d49b7d6b503e6d26fc1be4308012e5b94d06fda96ec004df11e`  
		Last Modified: Sat, 19 Sep 2026 08:11:24 GMT  
		Size: 2.4 MB (2375855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acb0b2b7305ba68f645fb3f242a661d8db780b808a0be97ec4cbdcf1fdf22743`  
		Last Modified: Sat, 19 Sep 2026 08:11:24 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
