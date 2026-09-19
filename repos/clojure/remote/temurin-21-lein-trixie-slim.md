## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:781cdf9ab9309c5fb5683019c1cf8dc6b2b586ef45b6eb736effa086a22a5894
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
$ docker pull clojure@sha256:8566d3ba9e55b1e3a2271ccbd74dcdd738036db3ab054b74621daf243a2d9a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216396308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd01d683b2b555b4d40050c85d262144b290cf37349bf3db968dfc1d94e1a3e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:24:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:09:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:09:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:09:52 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:09:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:09:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:09:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:09:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e29883f6912a906f7900dbbb0bd6d0b1488c843990346efc085541c616dfdb`  
		Last Modified: Wed, 09 Sep 2026 11:10:18 GMT  
		Size: 20.0 MB (19990340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd73c80da1f6f0cd156d8facb5c3280d327661f6c2d39cf4381bd7706ecf8b6`  
		Last Modified: Wed, 09 Sep 2026 11:10:18 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de3ad394d8b66680181b938f2ef1f369e25dd9ceee0e7b5854f1d2daa56cc54`  
		Last Modified: Wed, 09 Sep 2026 11:10:18 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0fdb49e838cef1bbbf86fb992fe1dc69410b0c0f0d923b412ecc32a1f8582731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0646cc16eee50d4a80ed888ee9f0820df8ee24f35f0f229cd06c21845ff79c1f`

```dockerfile
```

-	Layers:
	-	`sha256:bfadad4bbf46e4a39b58e8e67c86d35dd7ad3e41cfea286bc78859a8e658b6e2`  
		Last Modified: Wed, 16 Sep 2026 10:52:33 GMT  
		Size: 2.4 MB (2370145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98dad5380d1935e660f54d8080c6088d6952e8c7100ab72c86ba492a59e14d80`  
		Last Modified: Wed, 16 Sep 2026 10:52:32 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
