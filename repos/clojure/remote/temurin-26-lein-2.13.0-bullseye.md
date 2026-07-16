## `clojure:temurin-26-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:79cd96cf52e3dba10f1daf6740bc7735075bdd2403546d9e1df1b81114d97f61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:54ad8f9897c218b7943d83e44fc6d156d5266b7f3dbeb38570bf98988b3d821c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169746404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152bc0eb137a654ec893f47ae055859b98487a0f01495af589c258b74eb2f063`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:36:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:36:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:36:05 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:37:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:37:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:37:13 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:37:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:37:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:37:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:37:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f5cc5e414a1382ca6f60806cf6f7d4c9685e01cc4726dc4fcce710f60578c`  
		Last Modified: Thu, 16 Jul 2026 01:37:36 GMT  
		Size: 94.5 MB (94524388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9463bc1c594e4d6d759d6077bbb5ef19d8b72f3e25759111bed444c05c17304d`  
		Last Modified: Thu, 16 Jul 2026 01:37:34 GMT  
		Size: 16.9 MB (16929783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9e2231979473613b6db1e634f59d4aaae0b77ae97363e8e96b23b659db4533`  
		Last Modified: Thu, 16 Jul 2026 01:37:33 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39f0f5871c7f631266dacdf66e95eb4cbb5d964d9a95ebcc780688883536192`  
		Last Modified: Thu, 16 Jul 2026 01:37:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:fa081eba73ab06c8f6297e594843b1c1b39f74e5ef9dff981df33fd5272c175b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4483648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099a734f983f2b446ac74adb899ae369d8b15210c64e3ce1e3efd5514e61f1a8`

```dockerfile
```

-	Layers:
	-	`sha256:da7e8d78ab93b093def67f15b19e2ca2177183e260c2c9d4a70972be620d9e94`  
		Last Modified: Thu, 16 Jul 2026 01:37:33 GMT  
		Size: 4.5 MB (4465918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb4b8d0a809b362f9b69e2be0dde922dcc5f142dbde9803280418b874638a34`  
		Last Modified: Thu, 16 Jul 2026 01:37:33 GMT  
		Size: 17.7 KB (17730 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:52d0b43db2b01e43af8daae8509c84e92dfd314fd25abf9d16321ea63d425c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167209178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1002dc6d218911c43883babe171e9b71b59a6a3399712ba16e2b22e565ffbda`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:32:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:32:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:32:05 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:33:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:33:16 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:33:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:33:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f211a48949e6c7d9f32e52dd3dd31a0c85b773df7a3c0ce37c32c7531c3fe9d2`  
		Last Modified: Thu, 16 Jul 2026 01:33:37 GMT  
		Size: 93.5 MB (93504375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc0c9239ed2a633e4b308a6f2b37f6a8d9983e9c5657b4560e2fbe8f9718a4e`  
		Last Modified: Thu, 16 Jul 2026 01:33:36 GMT  
		Size: 16.9 MB (16928249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47b02a69ce59a53c706211ea68be1ed9fbc2193b41943e28e720c9f136e6df4`  
		Last Modified: Thu, 16 Jul 2026 01:33:35 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac019935c0d781620f6fcbbf323124b0520b76336405ef6338427853517e4d2`  
		Last Modified: Thu, 16 Jul 2026 01:33:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:89a22213b78e3bfb27c393002e4acbf84bc817d9a5f080acd2a3e89f4a1412f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4482741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2eb5a3c85f26dbb2f1e4a98c40646aa5c813b9c29a66275f999b864a28b2da`

```dockerfile
```

-	Layers:
	-	`sha256:458d1cb267dc34168606ea8b669c0b9948fb4887dac8654a3df368d7c515f193`  
		Last Modified: Thu, 16 Jul 2026 01:33:35 GMT  
		Size: 4.5 MB (4464889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1d74eac06688f21ea1b49fc7d1134640fb2c949de70d4c474d9b4e220e4ba0b`  
		Last Modified: Thu, 16 Jul 2026 01:33:35 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
