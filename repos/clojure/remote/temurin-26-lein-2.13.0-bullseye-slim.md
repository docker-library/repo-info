## `clojure:temurin-26-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:19aa6e2def3be3a9e4ce0ad62ef65b4c2ee7c313d36313f7fd0fb18268ba14b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:714a162795045c918e6ebab338c49ef066d56d63b10c56727a9948ff45a180e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144943229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c113a5f15a1e11b07be1bc6572d8d9db963fa0221131d609959a9697545b87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:56:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:13 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:13 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:15 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17c1e0f1ac6266e46665abe188e0a7e70b1d25aacab41c874ac7685ee26b515`  
		Last Modified: Thu, 02 Jul 2026 05:57:55 GMT  
		Size: 94.5 MB (94524368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09277fa5004d1dad25f8bf341c6af3556b34bc641005ff89e0d591e704db0583`  
		Last Modified: Thu, 02 Jul 2026 05:57:50 GMT  
		Size: 15.6 MB (15643763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0ede9d7eb9f44a75c8458b404ad700ce8e611e22645685020619171e8e07ec`  
		Last Modified: Thu, 02 Jul 2026 05:57:49 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530d502b42ef65833072889a0f9a5c7dd9096e51c623360db54b527b7b5f9ca0`  
		Last Modified: Thu, 02 Jul 2026 05:57:44 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5b87605d7dcd0415771880577d217f33516c5a1617420abd586bf705c5d5145d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c84e1f5be6a06afbb90f8b26c318e16c9e01c7e06492f09a775d03aa44e6f`

```dockerfile
```

-	Layers:
	-	`sha256:504b69122cf8679ae7dd6275ee5083967ce33444a2a3dd68cf88c801d18fc107`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 3.0 MB (3002003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6b9ade85d836ed824ae704f3790bf698ae7017cb903a59c2e3261d900198e7e`  
		Last Modified: Thu, 02 Jul 2026 05:57:43 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:74d3a17137abedd905149955a72fcbfcb1f076edb27bd36d3273e00aa0d5d945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142386448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5301a4c7db6a7e24ba748a4d3060dc069c97df348b156d0c58d022f836903`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:56:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:41 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:41 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:52 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5c7860396296b632845d39bd3f5635fc71c784504df6fdb641ab40cd9098e1`  
		Last Modified: Thu, 02 Jul 2026 05:58:15 GMT  
		Size: 93.5 MB (93504326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b511e4638469fed7c61868c0e8245bc1deeb38b4099d31de4ea9c6cf297f1b`  
		Last Modified: Thu, 02 Jul 2026 05:58:13 GMT  
		Size: 15.6 MB (15619564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e34b3fa71018775fc39190f5b2f2d31b5e9c3dc1a282110430dc3abc065896`  
		Last Modified: Thu, 02 Jul 2026 05:58:13 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323be3996dbff3316ed4c1c63b5c539d7a54854704c489ff40ee2f9acb755c39`  
		Last Modified: Thu, 02 Jul 2026 05:58:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:57ac23ebc834b2ffe2fc4717e019e56b41c90de026fe2c3bb10cbc574a95c4dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617378c95544a45238b5413a36fe41ed68208ce91fc35ef5f9f1e9b64696a87e`

```dockerfile
```

-	Layers:
	-	`sha256:09c2e8646fa27d6bbdd4249831a0875a25c626ef9dc12693ad8d5399f3d6f0cc`  
		Last Modified: Thu, 02 Jul 2026 05:58:12 GMT  
		Size: 3.0 MB (3001609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c976848ceb95560a89bbc49f78153484d2a7378fdee063c00a835c1eb18f88d4`  
		Last Modified: Thu, 02 Jul 2026 05:58:12 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json
