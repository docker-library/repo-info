## `clojure:temurin-17-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:ccefd50029ae44219d8e0b42bea0d599e94433432dc97a2a56c6921e1c888c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c1864771503669c3bf7da389ab064a67fe64388d3b77120e49a20971ca669369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196324971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f25df3365a8c954eb93df3c380c87d5ba4e418b0b9c30402964076ba532888c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:49:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:29 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:29 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:36 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:50:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:50:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0b87cc6d8882f773eda3d154c6f52378ca1ad67f4446c994e12649f2f92d77`  
		Last Modified: Tue, 04 Aug 2026 02:50:57 GMT  
		Size: 145.9 MB (145905437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b0bd0cd08acd691e8944d8901533e04e30c030460f9b6e7229fbfafc87f4df`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 15.6 MB (15644167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f21107e78917372a405cc18312bf88343a8259960018068d97ba668d30a3dd`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e7924ddf34d626904657850fd1fd7557a7266924d428d8235aad321921357d4`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:50b6135f03d5da34378cce58149c931d72387d514eef0155fd9f4d4771f6b844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5039950bf5355ca1f928f4e7c398657e975c4e8ce2f0df83b0108831d40edc26`

```dockerfile
```

-	Layers:
	-	`sha256:425f17c57baa7d884fea6ccf0ed65c1840b99405a286951362bebbb3c8cd0627`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 3.0 MB (3037112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cd6982c3177cb077f04c05d52b337befa3d742cc862c0b77d87016d220ff38d`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:34586d42fd14265c7d7dd356ed32985eee8d6b2ad1f67b2d57304989bf507a14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193608653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7be41b787cc0eb559eb14a9ba83b6b5636abe02dd58b8a75481fc77a3021181`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:49:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:57 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:50:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:50:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc597e70959e5bbc5dbb5e44fbd880ec44bf5b9e61c3e8b400c074f2f8f9b67`  
		Last Modified: Tue, 04 Aug 2026 02:51:19 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9ed3b312b462510a5c1fae61dc47a500ee503cb91f17dab34e049d7fffd5ce`  
		Last Modified: Tue, 04 Aug 2026 02:51:16 GMT  
		Size: 15.6 MB (15619765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173c8488255a38d0db9b999629d8abff997bcbd4e8957c1b2cb7e4421f81b4b0`  
		Last Modified: Tue, 04 Aug 2026 02:51:16 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b708edfe43f24591529b0969882a19820d7f5d5cc7d10851dc8636fa8be8d42e`  
		Last Modified: Tue, 04 Aug 2026 02:51:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:69991164e95dee4f372287e43b258c3328e004da128821b58ddd5bda7862d68f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f585f49037994de3e92cd9e1685f25b27b939de9f3c70de24f9ec2379804a5c`

```dockerfile
```

-	Layers:
	-	`sha256:fe3fb3daa57ab142cfe8611268e6b64eeca4517b9aea15b9b7f93cfcb4659e33`  
		Last Modified: Tue, 04 Aug 2026 02:51:16 GMT  
		Size: 3.0 MB (3036721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4cb81608c4cae53e43048340c98ade28dcc1746387ceeae1719c3e47c113dc3`  
		Last Modified: Tue, 04 Aug 2026 02:51:16 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
