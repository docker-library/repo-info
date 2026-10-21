## `clojure:temurin-27-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:a349d09dea2b9387eac40733f4801a1a8d644b51dfb719ed4ee6d70763153888
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:65d70b76a5188c571d666eef833456193b5e7d691cfb93d0b1a05c07cd4191d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144723425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf5bcbb458d7d7cd1e7f81115e2e1056c84183e6c27c73384eef7c74e24b443`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:22:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:22:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:40 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:23:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:23:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fe8e05d6b666560c05bee9859c6aec90e77a9affebc7b6acee6d9a020d47cd`  
		Last Modified: Wed, 21 Oct 2026 01:24:01 GMT  
		Size: 93.6 MB (93622445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf63d07088732dc455d49888c47b4e96679a2d9f355d606345777c523182d2b`  
		Last Modified: Wed, 21 Oct 2026 01:23:59 GMT  
		Size: 16.7 MB (16741785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7b62cf3f099ea00cc001655c8c2e756291651707f683b6a49f6a175a9850b7`  
		Last Modified: Wed, 21 Oct 2026 01:23:59 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043a563ac4df9b4b7e800c818f3f3c0c65f574067762d4d0ff2e22dd6151eb97`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5ae30d355740ecf5f7e13a2654bc6aa766a947e29bfe82b033b0e0ad3c590cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b849aba279ac08db384a1ff8bb5f15f42cd3af86973ee2bf5291707e4708ccf`

```dockerfile
```

-	Layers:
	-	`sha256:6095907f4380c56f310ee122c30f017a3df5701014d46b1bf316b938b90160e4`  
		Last Modified: Wed, 21 Oct 2026 01:23:59 GMT  
		Size: 2.3 MB (2335378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2629dc96e3b14d5e2fb93d190930833db3d53fb741e6322239eead9d29256ff`  
		Last Modified: Wed, 21 Oct 2026 01:23:58 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7abc755b553c236311b4237ef9cdc76df59c92b35010e59c877d9714f311107c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144058486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d82dccc7c69f05ebdfaf98a75934ce471b69abcc3cea699654d5d4dc1f86bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:39 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:28:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:28:39 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:30:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:30:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:30:29 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:30:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:30:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:30:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:30:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2f54f9826ef1192f5a7db048bd91ab1d658568fccd4b62c9ec5419256077fd`  
		Last Modified: Wed, 21 Oct 2026 01:30:50 GMT  
		Size: 92.6 MB (92633100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f6c77f73cfbc35fac5eb8b9ab1411392f5398e4079012d6715a396390aff57`  
		Last Modified: Wed, 21 Oct 2026 01:30:49 GMT  
		Size: 16.7 MB (16709265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11c140876210e6efb56bd28c174fdc345dccdee81d445f4c007ee6b63663c3a`  
		Last Modified: Wed, 21 Oct 2026 01:30:48 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9701517962a5655b8d68f63a93601c03731c496db87f173a28538ea043de0d73`  
		Last Modified: Wed, 21 Oct 2026 01:30:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1bf1272775ece582cd7a4de56c9904eb0741debe02f59f95ecce8d0d805284fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a2be40194607bdd103ae0a074a0c1bd78eda09f44b70cf9a6ca586924444d5`

```dockerfile
```

-	Layers:
	-	`sha256:58ad74ebc7ca3183b093fb6ff887df9d4d25fdd53d1df0c5233ef1a0d81290b2`  
		Last Modified: Wed, 21 Oct 2026 01:30:48 GMT  
		Size: 2.3 MB (2334985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbfd2c53ca43cc0b4a7b89d0935c4a047d11a385333893c0ba6d72f50d75d8f7`  
		Last Modified: Wed, 21 Oct 2026 01:30:47 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2fe934a20e4979a3a90cea9ef00f7bc91981418baf18eb8eba5d02a6d371764d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147202464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825b4b29ae67fe2976cabd1eb0302c19b4acaaa74980ee4672f96faf1842a023`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:21:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:21:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:21:37 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:25:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:25:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:25:23 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:25:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:25:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:25:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:25:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a828c2fdb7bfe67406011a719ce82adb7addc34d3cb8df199646234ff6fa682`  
		Last Modified: Wed, 21 Oct 2026 11:26:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5679b3f13a6a03bffafdf27afe3c50fad2bc698ff02955482fdffe506996390`  
		Last Modified: Wed, 21 Oct 2026 11:26:01 GMT  
		Size: 16.8 MB (16779082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f6549d2fb1c261ac165d7a08963afce11dde2e8598333243bf96a079906579`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2263236174bee67fe03ddf06d73519c9522b3a806b304f64999196d3ed81d25b`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25b4e7fc409d2f379c36114fe39c64e4c4cd4de426ec8030e446cb8ae4bc51ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8443c48276041ec611be4ad9c701538eafad7abafadab58a37b9c6c5c70a6137`

```dockerfile
```

-	Layers:
	-	`sha256:5dcba5693cc602fe773990f37ad6fd6d3d272113bd96720850ad59a2a733c238`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 2.3 MB (2320294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17d2a0179c8f33357ea616e3f4739677fbec44122b0d98cf9b9e6511a90661c9`  
		Last Modified: Wed, 21 Oct 2026 11:26:00 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
