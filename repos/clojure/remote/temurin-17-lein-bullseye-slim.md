## `clojure:temurin-17-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:0e48b0f4f0ec237445aad2fe9367c681c3182396c30b71a8ea55cf9ba9cfbad7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:49e397a0b7699aa5f08c7bd95a71420769654736e2cdfe95249778f5f04511cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196324816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f4b417b06892f4b2c5184f73c5a3c8c8c72be228f8fec6803e0951fa57bb486`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:20:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:20:32 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:21:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:21:42 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:21:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:21:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117035d8fc32286dcf52d082597da288d26ea3ffd520f10958e2269463a213cd`  
		Last Modified: Wed, 05 Aug 2026 01:22:06 GMT  
		Size: 145.9 MB (145905428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d2e508d0250be74a360456ea43c96a3900d00c0520fd4bce77d1ff21d88191`  
		Last Modified: Wed, 05 Aug 2026 01:22:03 GMT  
		Size: 15.6 MB (15644127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525ccd99212cf8f1ea315f7fbfad06b21ef491b1b02e23984f245e5e1c8b6818`  
		Last Modified: Wed, 05 Aug 2026 01:22:02 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b37511c587ff9ad4b70f3dfe400ae52d26603d076150b5e220ef2efc1a7c423`  
		Last Modified: Wed, 05 Aug 2026 01:22:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cc325167fc0f17579c2926954b1b1312eea2635f00956730f8ce44653c5f5c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b05b26452edee27614f46cf39990bef7cf855cca7027dc01d2a333c3ddb555`

```dockerfile
```

-	Layers:
	-	`sha256:50aa28937262e6f4d5042c3c4300699cf3e9b1878d5e82b628d84d325fb4b799`  
		Last Modified: Wed, 05 Aug 2026 01:22:02 GMT  
		Size: 3.0 MB (3037112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b7056ad86a16b31c20a7f1f88438764090412c1c57980143570cb0609dd98ac`  
		Last Modified: Wed, 05 Aug 2026 01:22:02 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d8351436b398ac338493a978e44458e0ad02a35314a2a4373c43cecb9f1ccc2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193608352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41af6f0efa8a729751f35b59208e5ed0988e7e8bd6c8423cd1f0596baeb70237`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:26:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:26:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:26:53 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:27:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:27:59 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:28:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:28:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:28:01 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:28:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee965bbc7d973beda4a28f381c6d96541f9dc27e79eec9a077a237403d0590`  
		Last Modified: Wed, 05 Aug 2026 01:28:21 GMT  
		Size: 144.7 MB (144724301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2126c8bc89059c7ec3e4e656345728e3a22320b453a7c8bf08ff5653572636c6`  
		Last Modified: Wed, 05 Aug 2026 01:28:18 GMT  
		Size: 15.6 MB (15619514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7f9376615ea4116472d8bfa667f10b8b75e40e41bfcd5c03485eeeba0dd725`  
		Last Modified: Wed, 05 Aug 2026 01:28:18 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d297a6dc33358855b96e026149f69371329fb693adebf99fae7663cb26fc9cc7`  
		Last Modified: Wed, 05 Aug 2026 01:28:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cb74da83befbf98ca75088563744a7a26275c97b2a7533de95660a21191a7a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6c8ffea13c3234d1a2518dd0690dd35efcf502ac6f58873ddba3d540f48ffd`

```dockerfile
```

-	Layers:
	-	`sha256:8fe53e62936e63b34c1fc6586289364b3c52e9379f518636e5a860c9ba44830c`  
		Last Modified: Wed, 05 Aug 2026 01:28:18 GMT  
		Size: 3.0 MB (3036721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a5e7f1e5e1f19dada002e7c98773d371804b369507a24d7356c7bf4428cfe2`  
		Last Modified: Wed, 05 Aug 2026 01:28:17 GMT  
		Size: 17.9 KB (17892 bytes)  
		MIME: application/vnd.in-toto+json
