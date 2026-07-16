## `clojure:temurin-21-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:bb6ef24b7c17b71577a75d6cf17aded673a254d825dc9bdb383bec7883eb1f64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9b9c67612b677dfe54387cffe10cbab830361628bb4977c5c5a3fb39e571a958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208573519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c920257f434f150ed978ecf7ff02e5a1060b82ff3896617c999e94820577fdb9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:21 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:33:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:33:21 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:34:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:34:26 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:34:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:34:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e275ed918ec3bb3a450aecbf64ec54047ee6f206681937d624348601402965`  
		Last Modified: Thu, 16 Jul 2026 01:34:46 GMT  
		Size: 158.2 MB (158167003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1066e17cd1e01743bbf2144525ac76316943ca5ac85987539121170a59c117`  
		Last Modified: Thu, 16 Jul 2026 01:34:43 GMT  
		Size: 15.6 MB (15631128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87101bb6b9ed71f94d3f9852c6abc0d0a2d6a3e36f27d96da85b56ca943c1256`  
		Last Modified: Thu, 16 Jul 2026 01:34:42 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48894338ebaecd3bbdd80a5071c49882bbccb76cc3cfbfe9e54d9c16593acfa2`  
		Last Modified: Thu, 16 Jul 2026 01:34:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3148796c555eac0a9633a16e7009259a389bbeacad55e1edb59221d9711d9f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1df3050161fbc6fec50757c71389e7cb0809b711b5ac1606fba5fe5a68fdf3`

```dockerfile
```

-	Layers:
	-	`sha256:21998a6db278fb307f544b8473b0ce9b93b2734be8ff12530ed8177c8e8c3341`  
		Last Modified: Thu, 16 Jul 2026 01:34:42 GMT  
		Size: 3.0 MB (3038964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c773c57f787c25d20a9c8c23713f04f5643bacc1c388626bfa8af079018096fe`  
		Last Modified: Thu, 16 Jul 2026 01:34:42 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e1895a3aab8fef307c6e1eb0af51a78bef59392875a7e8587c8bc1f68a855182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205357977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1d2d731a56ae963df205e456075ca002a285ccc2be7f6d4b641a7aa5a30be3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:28:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:28:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:28:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:28:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:28:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:28:19 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:29:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:29:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:29:31 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:29:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:29:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:29:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:29:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3c4c8f1b837b782a88abe261b25d2c1759bad5ddc86d47332f5a2b034d7336`  
		Last Modified: Thu, 16 Jul 2026 01:29:54 GMT  
		Size: 156.5 MB (156461260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409da0f2cbd6b4681154a9cba44d571062c305983d33bcd1bfd113752e33a5ff`  
		Last Modified: Thu, 16 Jul 2026 01:29:51 GMT  
		Size: 15.6 MB (15632091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96939c7937765259a911fa744478d6ee531629feb0b163bf42bac192c5ef028`  
		Last Modified: Thu, 16 Jul 2026 01:29:51 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02108c46b2c49e684c0e26fcff34df0a886407e8a828d55b710b0bf1e222915b`  
		Last Modified: Thu, 16 Jul 2026 01:29:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b917bd5ff9fc383ad8723fcd3a93e987537220b08495f9554dd0e515b6e33eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fcc76388c12da512f86911e923c25541b0af4b0e0b5bccacfb5709ff7dd702`

```dockerfile
```

-	Layers:
	-	`sha256:842d3c1130db1aa02b444bb7f827919f78de10b7cec31cb6d61a8794aa2c430c`  
		Last Modified: Thu, 16 Jul 2026 01:29:51 GMT  
		Size: 3.0 MB (3038573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bcfc4b29151897f77b6bb00bb000598568031fe99c74004ee63d64ebdff17a9`  
		Last Modified: Thu, 16 Jul 2026 01:29:50 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
