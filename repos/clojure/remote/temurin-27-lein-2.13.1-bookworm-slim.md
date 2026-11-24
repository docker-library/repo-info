## `clojure:temurin-27-lein-2.13.1-bookworm-slim`

```console
$ docker pull clojure@sha256:1584b9d319c7c53b3f4ef180c281c6feab3d5c62c7e6a3483f62887ffca685fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.1-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0932b658416c5aa2a1ce0b9b856db0444fe732521b9f5ae42899401491d18bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144485680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab34435122f7538e11d50b527de773b8f6f786706441d5a25076d7e211f23dcf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:13:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:22 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:22 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:35 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182f1ac174c8c0d4b2007a33238fc1857ba219fb9a3d1f2464949faa45b3c6b8`  
		Last Modified: Tue, 24 Nov 2026 05:14:56 GMT  
		Size: 93.6 MB (93649645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b1c745fad41478fd5bdb6391bcb4afc5d435c36c1acab38851e0b82ca0f998`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 18.1 MB (18071936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61bb231c00f466156f21a16d460d7c9685ab25d6e53a241fd1daa797bd5cebd`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f063c70680c19a25b5ec6015fc6052415b3172b52e3ee0a8d8a52e785a57cfc`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:002eb0263d763a784bfe90c54638330eb687ffc23779b5aa6cf6b4ff023269fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6e36a8d27e9f49427ed5cecf0dfac599560c4b4b50ca3b82074ff3bd6cbc02`

```dockerfile
```

-	Layers:
	-	`sha256:387f802db6e431c55b6fc01c36a7be7a70d8857f8a56278ddc340c8b2b930c27`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 2.7 MB (2699969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0738e0b021b3fd83d6c027d952683085ec4543ed3008a6ce69969e94f097b29`  
		Last Modified: Tue, 24 Nov 2026 05:14:54 GMT  
		Size: 18.4 KB (18362 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.1-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:544c0dac92a993cc07b61b63ffa7f242ccb3db64b2e2a24d6f78ee8332f4ee40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146822500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232c5b6375c0b3f01220e1d385963797bfd38150b5e91ffc08224fdfa51938fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:57:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:57:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:57:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:57:04 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:57:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:57:05 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:39:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:39:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:39:43 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:39:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:39:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:39:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:39:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac00a024d1c11ebe36f958fa3116dcf1da9fcec9c546b4ebb16040d750c0bb4b`  
		Last Modified: Fri, 20 Nov 2026 20:01:23 GMT  
		Size: 91.9 MB (91933325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61139ca574df0df42514aa9038475b5771a6f0f7eade7547aa6498c45c1aaec0`  
		Last Modified: Tue, 24 Nov 2026 00:40:09 GMT  
		Size: 18.3 MB (18279466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bca31866e16c8c3a6c67ce60e83f8891abacf867dd93ef5e340caa195db1124`  
		Last Modified: Tue, 24 Nov 2026 00:40:08 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de1b117813bbf8d0bb0f00c912faf6352e8407a95d1a49bf3adffd859930889`  
		Last Modified: Tue, 24 Nov 2026 00:40:08 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cf7deb44f82567f52ecf5d69dd4f5b1059ee45694734577afb50b0f0bd4d75ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2702282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79e8322370fc49e7e3455cada10c840c557f1b85b19895cb6f7a6cecac35b8c`

```dockerfile
```

-	Layers:
	-	`sha256:044f7d2e54aa161b2655440f1f66a03472f567792ae6628f7441357d2d37389f`  
		Last Modified: Tue, 24 Nov 2026 00:40:08 GMT  
		Size: 2.7 MB (2683877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e95fa64e01304284d06fd60c7705f009dbef07fb331fcb78ee9f81e6b768d5`  
		Last Modified: Tue, 24 Nov 2026 00:40:08 GMT  
		Size: 18.4 KB (18405 bytes)  
		MIME: application/vnd.in-toto+json
