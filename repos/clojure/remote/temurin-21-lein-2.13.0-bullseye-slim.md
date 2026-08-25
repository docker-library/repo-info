## `clojure:temurin-21-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:21221a2313853df48a019568ad7d46885ee6304917407e5ff0296662bab931dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:389e282dff9b6683ae77e356d6266560cc8d0695036054fdcd0e883144dfef49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208538999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb74b0fc1d1e578350e4e88d66a2c6f051a76f9ac61143c509f1e439b39c2d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:29:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:30:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:30:16 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:30:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:30:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597f2afcf39a23e6b6416cc882317e0f6e901af0cd9c59ff2892d78773ae9b59`  
		Last Modified: Tue, 25 Aug 2026 01:30:39 GMT  
		Size: 158.1 MB (158120290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e933ee861b0fea373257c983b143b04b5205df349d75367771483c3c9227a2`  
		Last Modified: Tue, 25 Aug 2026 01:30:36 GMT  
		Size: 15.6 MB (15643326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84efd8f90c03b9afb1f7fdacabcca962ca6999d15275bae2c730a0fc9f358e3b`  
		Last Modified: Tue, 25 Aug 2026 01:30:36 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8397026122235d9ee5afc252d4538c77e81fbeda16f20cbb637b591051f50d6`  
		Last Modified: Tue, 25 Aug 2026 01:30:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b25acdfdb17b49f0875b2a5c51737c97a5819ad48dca2f2381b2250e2141a797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3061938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f976c38418ef88320591e900b9854f795c0c82ad11a1ffc550c711fcb6b341a8`

```dockerfile
```

-	Layers:
	-	`sha256:98768220a7c515286d86f3a7eb8c84905d132363a73272c3638e8c3ef2c03c7e`  
		Last Modified: Tue, 25 Aug 2026 01:30:35 GMT  
		Size: 3.0 MB (3044165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9afa91f7a9e3f6aff6352b987a12ece91e03caa35ffeb25850640a0924ce570d`  
		Last Modified: Tue, 25 Aug 2026 01:30:35 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

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
