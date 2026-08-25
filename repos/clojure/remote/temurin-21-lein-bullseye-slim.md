## `clojure:temurin-21-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:5c92d50e59cd0aa3cb78f657679cfe77398dcac9961277d5f885d8d12b0ad7a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f434c7de9ba717dd5c7ec500fc708ad2411983e76175f3b683cfa90dbd5621c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208538620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc60adad44e4999531f7ef5248ab90cde7afed4fcc5f9cb9875f77982f50cbb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:16:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:16:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:16:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:16:42 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:16:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:16:42 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:17:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:17:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:17:49 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:17:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:17:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:17:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:17:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1357a2aa386175afd5df024fa62a99b935508c40cfaf23f46094db7247b0542`  
		Last Modified: Fri, 21 Aug 2026 19:18:11 GMT  
		Size: 158.1 MB (158120314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3855ff4501d788d1bfb63f1d4d8f506a3ff1a1b3ae0abd445356d2273b9dea00`  
		Last Modified: Fri, 21 Aug 2026 19:18:09 GMT  
		Size: 15.6 MB (15643031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf3b0f9556ff8d3e2b6a33b00a258231ffaee4b489500569ca6f1745e3b8a44`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed7914bc5d8d891462796cfd77d5cd2279f5e6d930b307275dbdda4185f29b2`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:222f0099acea3a73dda54308683e98f23ee545eb3b1290ba9b730d1374455a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3061938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03077fec24b77b57c690dfa25a1ac3cd14104b04d088120c9aa81233025ac51d`

```dockerfile
```

-	Layers:
	-	`sha256:70ba0209c148a9f914d318c40254350625e797313e7864a7b574985fd96d0043`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 3.0 MB (3044165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d835cef0999f4481c49a885935cdd63992fff2b09ad8ccb5adb75a6a4da3e257`  
		Last Modified: Fri, 21 Aug 2026 19:18:08 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:420dd61e9d1145fd41cd0a5ab2e8b370cc47c23ff863213bd61e864241f59111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205298214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d59c8137ac9053309f6f8565968480a181222f6a154411a76339ed6ba63e4aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:33:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:33:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:33:34 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:34:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:34:44 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:34:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:34:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ce8c87a08876b8e9912c5d7147ebe59dd80c70dd816013b3bd645f50bc90d`  
		Last Modified: Tue, 25 Aug 2026 01:35:07 GMT  
		Size: 156.4 MB (156401957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf72e83789d5098d7d8ed3ae6abc4b7d73725f93762ef96493a143862e9f066`  
		Last Modified: Tue, 25 Aug 2026 01:35:05 GMT  
		Size: 15.6 MB (15631592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2362854fe5c4f2eb18464f98544b92cbd45d62fe9d85de33c06d5d5a35166361`  
		Last Modified: Tue, 25 Aug 2026 01:35:05 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3780bf2c2664261b7687b00ef9a2ab6a50e372c913d5a249799f1555b471dd62`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:061f30694af1912d1070d1d4a780e67c8ace4644ef143a1bf84d738b5910af0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3061668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b04c67e15928237b3128dc06f9852b6c7ff6dd9f6e63564a4f6653ec1f21f37`

```dockerfile
```

-	Layers:
	-	`sha256:a6fc88aa6c61f049e4f009168b7b38e0db216200650f7c35cd650ecd005fde71`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 3.0 MB (3043774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1fe8b435f65dab8d876cec04fde97e9f739d954d44b637ab7394c486f0703f4`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
