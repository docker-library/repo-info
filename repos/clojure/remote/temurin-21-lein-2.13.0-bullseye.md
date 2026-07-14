## `clojure:temurin-21-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:a29413a8efb15c1218e231fd47ad2c24b0cc9c32b7090dd11fa36af4049131c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:f67c7fb8160d6a5769d67fdad8c8fc8e2775015209785df8847c5892152dc615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233399458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37ce9e0b4b664d2350d0ddfc72f43167207027c210130b743d899f0f83bcef8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:20:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:20:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:20:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:20:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:20:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:21:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:21:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:21:12 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:21:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:21:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:21:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:21:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc5f16d51b8f02c02c55928e4b41cb1a25d94dec7fed28c9b9916dc7232a1c1`  
		Last Modified: Tue, 14 Jul 2026 02:21:35 GMT  
		Size: 158.2 MB (158166916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ab1f93790cfd37c2f1f7a7bfba2afd9d83645a7cc2446d784ae7d56746b8c1`  
		Last Modified: Tue, 14 Jul 2026 02:21:33 GMT  
		Size: 16.9 MB (16940353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d764a7414e2ede10ab72ecf44f61f64c91130c455a888c00f0295d05e49f7708`  
		Last Modified: Tue, 14 Jul 2026 02:21:32 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd5a88c563d1e43f5fa6f8950fdb5288dbdbc9b48fd7ffac31f7cd90aaa9b00`  
		Last Modified: Tue, 14 Jul 2026 02:21:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7ca6ee48c4a4d24b651fba26c49301a7104efaeeafb005e1092437b85190aabc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7a55e824aff28ec6f900ad554a5c4b5cc484e14b74db98fc3248d78c034d9c`

```dockerfile
```

-	Layers:
	-	`sha256:1c8309268dc1ef42b786edfa73eea79aacce6e0158ceab033043ded36284d944`  
		Last Modified: Tue, 14 Jul 2026 02:21:32 GMT  
		Size: 4.5 MB (4502879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cf496c9772346a43af77fae7adf3b801df7b9d90dca7bd966d40e93f2f9f9fb`  
		Last Modified: Tue, 14 Jul 2026 02:21:32 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a98c7052299c3999b933efb96ad739a411cbab4ea297ad63f20abc69520a28b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230165696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457da7338cef056a08192cba25df34866d4790ea6553772d9826635b97b1d193`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:27:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:27:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:27:13 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:28:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:28:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:28:22 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:28:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:28:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:28:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:28:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72e88e8bbc9067b1d4f2c23d4e83d91eced41b7099ab0c6cadb08e1621f557b`  
		Last Modified: Tue, 14 Jul 2026 02:28:42 GMT  
		Size: 156.5 MB (156461288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a952bd79b29d28909d0b72d2e58a777e61014daa7861ce0fcf23ef106ffee53`  
		Last Modified: Tue, 14 Jul 2026 02:28:43 GMT  
		Size: 16.9 MB (16927919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddc705a11aa3ea8555f711f12a777f92564ccebf2605f9956362734df835bc5`  
		Last Modified: Tue, 14 Jul 2026 02:28:43 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90510f2a0096f59aa920e46c47c1c78f85a72e71293650d31f53f383d6a1c664`  
		Last Modified: Tue, 14 Jul 2026 02:28:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d4aa330124c3db445203708f06a10dc392e9bb09a24265279011b5eedce7ee39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4519712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ace6498810b3a6e38aca28dd4452a51fa6e0268723ad9dc4e914adab0071ff`

```dockerfile
```

-	Layers:
	-	`sha256:a64e50bbcdb030a93b2a78389fc3a82ee1e150b8f7812626e180c47b1c959e7f`  
		Last Modified: Tue, 14 Jul 2026 02:28:43 GMT  
		Size: 4.5 MB (4501853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c3d765f282598e9417290461274f42d7ec5ae716d8d83a5b03f2690b6c6e64a`  
		Last Modified: Tue, 14 Jul 2026 02:28:42 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
