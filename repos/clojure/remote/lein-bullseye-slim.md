## `clojure:lein-bullseye-slim`

```console
$ docker pull clojure@sha256:a8fe53d26d6f994f6cad2e96c499235b8f332d10ba2f4334d6a6ddfa824e01af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:78d7a950bef2c183f7ff1caf0331934a3fd83e2200c83322c2554cd45df2953f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143033883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822f0bd528a272334623eb83e941a73d7dd35d4f5c2ac0e5754a1330550c0734`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:30:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:30:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:30:53 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:32:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:32:01 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:32:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:32:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca076b403bfb0a1004b694a15000fd0296b803cf94b936d79cd7ff6fec2fee3`  
		Last Modified: Tue, 25 Aug 2026 01:32:20 GMT  
		Size: 92.6 MB (92615119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49be499a260d7a6d7b15a1432ddde23f74cef5c33a081f3cfd9d14b888337545`  
		Last Modified: Tue, 25 Aug 2026 01:32:19 GMT  
		Size: 15.6 MB (15643415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd5941ca0b301b2b17cccce9e8c4b1693edd6dac1b4d50421e03f65676f03fd`  
		Last Modified: Tue, 25 Aug 2026 01:32:18 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9342a1d6ea908ed2747b819b2d234df55d5866635d9fc43cf7b8b768ba33c8de`  
		Last Modified: Tue, 25 Aug 2026 01:32:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:177182d5fcfdcad619655b080541aad46e81fa45ee9a013216fed6c6a44cb24e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3028799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d191c50f6206aac7005a7ab196d1fd9cb9e0b201273720435911b1eb71098657`

```dockerfile
```

-	Layers:
	-	`sha256:437b6d87aae9d6e5c4baa9dd308946c1501e0610c9f8ad0fbe21ba5bcff2d686`  
		Last Modified: Tue, 25 Aug 2026 01:32:18 GMT  
		Size: 3.0 MB (3010371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a43ac891c89dde2c2870f9912475132979847941c8ef123b933a4c542536d89`  
		Last Modified: Tue, 25 Aug 2026 01:32:18 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:117238873835259e14c3924152f01ba19a5282abb44bf1b11c9f3b65fa354a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140428296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07c242511fcd53c5fafe23b21246094ef0d33b81a2da19195c86972f3f7f7b8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:35:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:35:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:35:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:35:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:35:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:35:17 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:36:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:36:25 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:36:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:36:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3fdb1b1475c869302e2c102e2ca137e7799447c63505d11bbd7f5ec5c7b50f`  
		Last Modified: Tue, 25 Aug 2026 01:36:46 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87a4675559e8f3c831383f431291b2764b99877a31699e99b3eae53bb8e8499`  
		Last Modified: Tue, 25 Aug 2026 01:36:44 GMT  
		Size: 15.6 MB (15631419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0b4b2fb97e85ef1b2339af8c69ca38040311b94bb774fc378f78a02ea51eb4`  
		Last Modified: Tue, 25 Aug 2026 01:36:44 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4281dc14c1ad5b92b3376706976caf1346bda09822eb127ad14be2005cfa0821`  
		Last Modified: Tue, 25 Aug 2026 01:36:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2c95d0e6ccca4daa61c4eb3ab78cb97d53cea3758b0d62f9138268da52829a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3028574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da412c468055e759d51d238c836ed64b06fbcc3e543e9fa2b09da05daa26d5da`

```dockerfile
```

-	Layers:
	-	`sha256:a0ca20c5a5984887c8cd33440f9114290580462c80587af4f7bb811ff709f62c`  
		Last Modified: Tue, 25 Aug 2026 01:36:43 GMT  
		Size: 3.0 MB (3010001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d5f865bff0cab98754cd5201ffbc6230aa29843016cecf27a3b2f678d2cacac`  
		Last Modified: Tue, 25 Aug 2026 01:36:43 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
