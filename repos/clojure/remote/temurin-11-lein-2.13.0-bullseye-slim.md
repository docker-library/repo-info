## `clojure:temurin-11-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:31c8ef41b72670fa9bce80329dccc41a7372e033405dea0df840933cdfc8f2fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:afcd5c0d891fa41096571884ce39931823480b18226eb2e9eeea00abc5949e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196303136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bb529df28ec2d701a1c3bbd036c2a22815cd30e33c08024e934bffb465c47d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:41:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:25 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:33 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:34 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904a525bebc686ff63debc44f6dc2d9786b3dcdfe441bc8b8c162844acc59c3e`  
		Last Modified: Tue, 18 Aug 2026 20:42:54 GMT  
		Size: 145.9 MB (145884873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b49f1cfc23e6a0f9694346251246364fb0af8ae206ee41eba1e18fcca19c20c`  
		Last Modified: Tue, 18 Aug 2026 20:42:51 GMT  
		Size: 15.6 MB (15643404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cc118e9a09e51d50ebd0431560e073b46b12f7d78c1ca55f5936f78e0bd628`  
		Last Modified: Tue, 18 Aug 2026 20:42:51 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:16f6ba4d1252995d5955cc2b6c2c62ed2e382c8862b7827a2928e7405be2cb07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3077609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb2c9c14de944053fa25b250432a11ed4c856a30fba4b1a25a5d619ebfb975d`

```dockerfile
```

-	Layers:
	-	`sha256:cc2c7a13219d2b6d70e4bf605c80de97fa006c7e1b522d7a59502e8f7a51fa17`  
		Last Modified: Tue, 18 Aug 2026 20:42:50 GMT  
		Size: 3.1 MB (3061831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d6ac65d6e8ae4b8edf1b546447f4bcf40a903ecaf06889a189221379ff41622`  
		Last Modified: Tue, 18 Aug 2026 20:42:50 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cb941f7b118320ca56db0278f4702245b89e53d89ab0cc00af77df923930e38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191477431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f0a70d7e56f708912f5a617f1fe6ffd9ec2312e38bbb5ce07632396a36e8ed`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:20:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:20:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:20:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:20:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:20:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:46 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:56 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab75a5f79ac43d3eb9486a60771687057dd51100db06b0c1803e7258d33d3324`  
		Last Modified: Tue, 18 Aug 2026 20:21:17 GMT  
		Size: 142.6 MB (142582150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92465ad88b1191127c41c18d35141d29e1b9ec305003d60f414e3e54236c7f62`  
		Last Modified: Tue, 18 Aug 2026 20:43:07 GMT  
		Size: 15.6 MB (15631161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700fe317ce3563285261e1e90ebea718d66146939055915a13416d6163303bf0`  
		Last Modified: Tue, 18 Aug 2026 20:43:06 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db598ef0a423aec51c56c85e0c01320fa06f4175b898153dcb8f6d37d3987b7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3077002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27aa2d6dc525d9382089d94b8961e504c31d4b1180c9c85689f1fa07c482b331`

```dockerfile
```

-	Layers:
	-	`sha256:920b032275eadb027d951d2cadede2ac7fabd6f493ca1c3849471bac5bcd9d94`  
		Last Modified: Tue, 18 Aug 2026 20:43:06 GMT  
		Size: 3.1 MB (3062058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:975c4353d6ed06054bc115b829c750d6a0cc9723ac49bc1d2e2dd55b57e213cb`  
		Last Modified: Tue, 18 Aug 2026 20:43:06 GMT  
		Size: 14.9 KB (14944 bytes)  
		MIME: application/vnd.in-toto+json
