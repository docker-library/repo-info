## `clojure:temurin-17-lein-bullseye`

```console
$ docker pull clojure@sha256:65380c757f92d07d36528fedd0cd938dd970f4e3337c1a793c71fbe5aa398131
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:809f755f24a986b5ee8342ed2691cef8c3416cad442ce7d7c554ff49a05e7fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221055739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94dcd82648fedc2efc579a20d3d705138517d9ccaea3b4ac8e75dfacf8da9dde`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:27:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:27:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:27:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:27:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:27:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:27:22 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:28:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:28:31 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:28:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:28:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:28:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:28:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bd8ce17eba78fce4408e41cfb94db57df3c02c6f08bdccfcf66b909b236bcf`  
		Last Modified: Tue, 25 Aug 2026 01:28:54 GMT  
		Size: 145.8 MB (145822638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f22d4b8731e79c7e26705997e40b283755a641389a87c14bff94d5dba2bf67`  
		Last Modified: Tue, 25 Aug 2026 01:28:51 GMT  
		Size: 16.9 MB (16940059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59aed4cc2b3fdf5a8b904b7c02cb04f22b6a219cdafe4769d2d095909275934`  
		Last Modified: Tue, 25 Aug 2026 01:28:51 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7542c2e55f030c0b1b1dea1990c052955ba2618dfc5781096147e00b3ab39a1f`  
		Last Modified: Tue, 25 Aug 2026 01:28:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1eff08fd0fa4e909b0d51e9aed67ce55f57688c5f4e492f7b93191b2de340e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276b01e4113b40b1b0edf6ab4c3d54d81fd5d2137308c63452d51778cccd543c`

```dockerfile
```

-	Layers:
	-	`sha256:418cfc95299dd1085c4c5328795320e8b93a31f7d6d6fef28849bc629d3356d8`  
		Last Modified: Tue, 25 Aug 2026 01:28:51 GMT  
		Size: 4.5 MB (4506228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d663c3806156bfb83afac035bf2d0002cf248a2bd5a77b1baf6dc6c4a9b5fbd9`  
		Last Modified: Tue, 25 Aug 2026 01:28:50 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ec66080e8e5e729d834eabf3519f8abcaecbdda3c006d2a0f8e22467e0343dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218354903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb721e9e80385331474adf700809b54684b89fbd0798ab0ea80796e2f32d615`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:31:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:31:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:31:49 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:32:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:32:58 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:32:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:32:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8d91413d257bac9ee51dbf44935b7141443a20f6d6b1d43d2c51f590815d9`  
		Last Modified: Tue, 25 Aug 2026 01:33:24 GMT  
		Size: 144.6 MB (144647543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b0ae88f72cea0f29b83949032c11b39a564b277ef39ef064009e9fe56c086c`  
		Last Modified: Tue, 25 Aug 2026 01:33:21 GMT  
		Size: 16.9 MB (16930404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4533685c6988a51d29652acf29b125dccd5d5e7c9d86922ff1043b13e64631`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18cc70c5734cbdffb6fc9a4a6f9bc13a1af4943b9a57f2de529c63e138f95e0`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:6054101f53d94adc9d3a64118832692fcd24fe72279bbb9c7714cbf5098b5381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aadd61a69dc603ec64694064c59b95d34910135e07d8b09a75005c01e2940e`

```dockerfile
```

-	Layers:
	-	`sha256:b3a870a228ea9b43d700d49053651e44d410280928a914dd73dfb75ed5bc7d04`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 4.5 MB (4505202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:746f54ce2053fd5baff5c859951034610fb422163ae7887b1154b23b1fb1a7f2`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 17.9 KB (17857 bytes)  
		MIME: application/vnd.in-toto+json
