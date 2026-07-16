<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.18`](#kibana81918)
-	[`kibana:9.3.7`](#kibana937)
-	[`kibana:9.4.3`](#kibana943)

## `kibana:8.19.18`

```console
$ docker pull kibana@sha256:57ba94c8cbfb5feec7aa08a7170927d65241b7a9b0bbe7d23caeed18999de197
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.18` - linux; amd64

```console
$ docker pull kibana@sha256:856536024bb3e8a72b9589b487549cef3c8bb931aa7a1bc825ff88092571a503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454766101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd17930429e4c5b885284c740a1c88642cdfd67c00b1035efd4edadffd5cd90`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:45 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 02 Jul 2026 02:29:45 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:33 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 02 Jul 2026 02:37:33 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 02 Jul 2026 02:37:33 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 02 Jul 2026 02:37:34 GMT
RUN fc-cache -v # buildkit
# Thu, 02 Jul 2026 02:37:34 GMT
WORKDIR /usr/share/kibana
# Thu, 02 Jul 2026 02:37:34 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 02 Jul 2026 02:37:34 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 02 Jul 2026 02:37:34 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:37:34 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 02 Jul 2026 02:37:34 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:37:34 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 02 Jul 2026 02:37:35 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 02 Jul 2026 02:37:35 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 02 Jul 2026 02:37:35 GMT
LABEL org.label-schema.build-date=2026-06-26T06:55:50.831Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=8b2d519956d8e256d1da1a46185994fee710c3b8 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.18 org.opencontainers.image.created=2026-06-26T06:55:50.831Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=8b2d519956d8e256d1da1a46185994fee710c3b8 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.18
# Thu, 02 Jul 2026 02:37:35 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 02 Jul 2026 02:37:35 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 02 Jul 2026 02:37:35 GMT
USER 1000
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e81d8032e607fb70f0bcbd7d14f618afb60b7fb693cc1688067bdc9b792297`  
		Last Modified: Thu, 02 Jul 2026 02:38:32 GMT  
		Size: 9.4 MB (9391371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1297281842a77aa8bffffa64ccb35d7013af5a429cd79a9e571616818d71397`  
		Last Modified: Thu, 02 Jul 2026 02:38:40 GMT  
		Size: 399.0 MB (398995121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda6af4b14ea7f008764242e11a4a375b6caf69f3a93a897355206eb87504df1`  
		Last Modified: Thu, 02 Jul 2026 02:38:31 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fc5578300ebf066aa9215b298235e78a59748155604029056a02932fd3b709`  
		Last Modified: Thu, 02 Jul 2026 02:38:32 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94518e5da4cbb5617b327e88f4643ae7781c8b65b24b395902cb6bf1f05f995a`  
		Last Modified: Thu, 02 Jul 2026 02:38:33 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0155f73ef7998ca7ec90f64ada8ed5673601e51337a6bc5675b5b7c8929a71e3`  
		Last Modified: Thu, 02 Jul 2026 02:38:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4409df579c55bd1ffedd07ad23dff2f4b7c3211d91148a85ead1afe99bf7ad7`  
		Last Modified: Thu, 02 Jul 2026 02:38:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102b28cb3f8e05512b816d1e3eb07172ef0c0febbb7002fec22df683131c69dc`  
		Last Modified: Thu, 02 Jul 2026 02:38:34 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe6cca4947e5824128815a3880d6701792fc7a3162a6deca26cf1d2d1c06355`  
		Last Modified: Thu, 02 Jul 2026 02:38:34 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edb6285d055024a590f89ad93c2cfd85aae63a8eeb4fd2a26cfc37c52ead43b`  
		Last Modified: Thu, 02 Jul 2026 02:38:35 GMT  
		Size: 161.7 KB (161743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370c3a63624dd239cbffa3f211949085fbd03b8e351036677a260c02c5d675a7`  
		Last Modified: Thu, 02 Jul 2026 02:38:35 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.18` - unknown; unknown

```console
$ docker pull kibana@sha256:2c0838927bf9e68e8023762402b8c241cf08441bb81588a49b6e4600bad33948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4964542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6199d56160b8607ca08b34a7888e3af3af5ec2c8f39d6bb65045313113b5045a`

```dockerfile
```

-	Layers:
	-	`sha256:869bcbe6fb30b13c8f923f5c3d0891b5a59bfb9390e3681d9c4354924837d646`  
		Last Modified: Thu, 02 Jul 2026 02:38:32 GMT  
		Size: 4.9 MB (4923627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0040702254899333d21c9859da594a2cd340e9971d4a66eaeaf707a2b3f47592`  
		Last Modified: Thu, 02 Jul 2026 02:38:31 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.18` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:5edc13d179f82e5035f450b351832c59e1e0b3f2e19229e4ea0514fd1525e600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.8 MB (466784377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cc8f9ff52022b862b7b6972ab3b4b03439aeb65bd943b9304eb9ddf890b751`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:46 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 02 Jul 2026 02:28:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:17 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 02 Jul 2026 02:35:18 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 02 Jul 2026 02:35:18 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 02 Jul 2026 02:35:18 GMT
RUN fc-cache -v # buildkit
# Thu, 02 Jul 2026 02:35:18 GMT
WORKDIR /usr/share/kibana
# Thu, 02 Jul 2026 02:35:18 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 02 Jul 2026 02:35:18 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 02 Jul 2026 02:35:18 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:35:18 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 02 Jul 2026 02:35:18 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:35:19 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 02 Jul 2026 02:35:20 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 02 Jul 2026 02:35:20 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 02 Jul 2026 02:35:20 GMT
LABEL org.label-schema.build-date=2026-06-26T06:55:50.831Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=8b2d519956d8e256d1da1a46185994fee710c3b8 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.18 org.opencontainers.image.created=2026-06-26T06:55:50.831Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=8b2d519956d8e256d1da1a46185994fee710c3b8 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.18
# Thu, 02 Jul 2026 02:35:20 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 02 Jul 2026 02:35:20 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 02 Jul 2026 02:35:20 GMT
USER 1000
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd372bbd6b6678f7f9489292d65c9cdea5234cb5f680013fe6217cca68f79c4`  
		Last Modified: Thu, 02 Jul 2026 02:36:29 GMT  
		Size: 9.4 MB (9410611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf7ffa12c43be9ba644dd500f64d8a37311305dba1dc18aed1965e4eee5ecd1`  
		Last Modified: Thu, 02 Jul 2026 02:36:38 GMT  
		Size: 411.8 MB (411849492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017b5f8fd5fa1d5845d152c2dcab366c116f5b8ba444f7e2bc7d501031fc74ad`  
		Last Modified: Thu, 02 Jul 2026 02:36:28 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b336bfc46743295f295745554fe099c1f5e4ecd004f53b8a4703d587acb6e5e0`  
		Last Modified: Thu, 02 Jul 2026 02:36:30 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba5e20afcb9843356d683bb34f1d571796ecfbff6685bba7b39af44c809762`  
		Last Modified: Thu, 02 Jul 2026 02:36:29 GMT  
		Size: 5.2 KB (5238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df945ca540722db2cc33aadfd1c8e4af1c6962d5bfffbbac4e72d6e72668c15`  
		Last Modified: Thu, 02 Jul 2026 02:36:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac29fbe935856dbf46a2b3bc0301efc4845d9ff479af64cba057d97277ffbf02`  
		Last Modified: Thu, 02 Jul 2026 02:36:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be60232111a7fa00350ca77f7f44e122613caa8c63ca115435d977934a9e9e4`  
		Last Modified: Thu, 02 Jul 2026 02:36:31 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0da46790111e27ca025ee442774eb3c6cd27e7cdffa7e3c8ede0b368ed75d4c`  
		Last Modified: Thu, 02 Jul 2026 02:36:32 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc59458dcb0fd3bb8cb64de8ec8e61f84485aedc787bc68e6caa9d3ac427a38d`  
		Last Modified: Thu, 02 Jul 2026 02:36:32 GMT  
		Size: 158.3 KB (158262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7387ca6bf55f5d618c935ddbfdc21cbc70b7f2cdae0e3bc4f8839032508e1ead`  
		Last Modified: Thu, 02 Jul 2026 02:36:33 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.18` - unknown; unknown

```console
$ docker pull kibana@sha256:d1b8ebfd297946dba27bf7d23af79497c3575d2c3c657ac419515835efd58a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4965854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00491c9954e8f990ac987839781ab9ed94861a43f83dc38d049593e9c462040b`

```dockerfile
```

-	Layers:
	-	`sha256:5940e9efb8e983c6b030e564c3fb16dc0aa0c7e4423f913b3fa6ba017d4ae156`  
		Last Modified: Thu, 02 Jul 2026 02:36:28 GMT  
		Size: 4.9 MB (4924691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdedf8a005d13708253264c4173a9f4a14f8275197f66efe6fb3a342698aba4f`  
		Last Modified: Thu, 02 Jul 2026 02:36:28 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.3.7`

```console
$ docker pull kibana@sha256:bbce4acc8e71dc15352fe95e31e78d380d60ebf691de2bdbb54f28aefffcaa61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.7` - linux; amd64

```console
$ docker pull kibana@sha256:fa7fdd255918dcb98c193985af7b2b71b78c68f0eea6b4c60d6c020a8c6eaeca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466164197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c227433989654a68453752c57c66f5547e08440239e21bfa0b58c8909a99e11`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:23:28 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 16 Jul 2026 00:23:28 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:31:27 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 16 Jul 2026 00:31:28 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:31:28 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 16 Jul 2026 00:31:28 GMT
RUN fc-cache -v # buildkit
# Thu, 16 Jul 2026 00:31:28 GMT
WORKDIR /usr/share/kibana
# Thu, 16 Jul 2026 00:31:28 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 16 Jul 2026 00:31:28 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:31:28 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:31:28 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 16 Jul 2026 00:31:28 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:31:29 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 16 Jul 2026 00:31:30 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 16 Jul 2026 00:31:30 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 16 Jul 2026 00:31:30 GMT
LABEL org.label-schema.build-date=2026-06-25T18:50:47.749Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=36e00282a99d328a291ef2eefb94fe83b741dd19 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T18:50:47.749Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=36e00282a99d328a291ef2eefb94fe83b741dd19 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Thu, 16 Jul 2026 00:31:30 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 16 Jul 2026 00:31:30 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:31:30 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 16 Jul 2026 00:31:30 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 16 Jul 2026 00:31:30 GMT
USER 1000
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29259245e6fb7fe6e6e15317762fa56bffa8b099c216d1054bec1eaf9469918b`  
		Last Modified: Thu, 16 Jul 2026 00:32:28 GMT  
		Size: 19.3 MB (19328286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06804bd5fa208f25d879f1c015812b134459734bdbb8cff90ad776fa29498dcc`  
		Last Modified: Thu, 16 Jul 2026 00:32:35 GMT  
		Size: 389.6 MB (389589340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa548d57011ba8da933d7286dcca74fecdc081b9de1919f3fad8ca82bc17b63`  
		Last Modified: Thu, 16 Jul 2026 00:32:27 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bab57220251bb3e8560f6b9dbaedd08f669dc76d65fc785c8eb903c6b87205d`  
		Last Modified: Thu, 16 Jul 2026 00:32:28 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1335b534d58b77fd5e98e6a3917923a0e14ce3a56c3c00dc2864ab25fc238601`  
		Last Modified: Thu, 16 Jul 2026 00:32:28 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600a7a2759a55e8e70a2a0b919b4d2873858193a28511f38120b5d0aac4558de`  
		Last Modified: Thu, 16 Jul 2026 00:32:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3477d9741fe020fbd353d579b1f0033ed66fcc45ab0b7a18cbcefdd3414d2985`  
		Last Modified: Thu, 16 Jul 2026 00:32:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb54ab10e4278d612a659f56de43cdc82297022f79196b938d3394487bb8141c`  
		Last Modified: Thu, 16 Jul 2026 00:32:30 GMT  
		Size: 4.9 KB (4930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6820398958419fd2cb6aa01643e9b0b81b6631a53f5cad91681c36f8c99b2275`  
		Last Modified: Thu, 16 Jul 2026 00:32:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ec8de8b74dc8e93f4c8521f4adb026e5502fa08d75e596265c1c2892ce09cc`  
		Last Modified: Thu, 16 Jul 2026 00:32:31 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b957b0e56ed6f4a865711d6b57af91fef2298b6a0676002e6e00388697d0b44`  
		Last Modified: Thu, 16 Jul 2026 00:32:31 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681b7dc8e05388572888d0164920768aad7747ae5515a1857fabfae276ca0edb`  
		Last Modified: Thu, 16 Jul 2026 00:32:32 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.7` - unknown; unknown

```console
$ docker pull kibana@sha256:7b5138e72c34a1964e299f95f0b0bceaf366cd31c50eb901e3ee4b8e9eae735d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5817027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e941780fd741da5f94ea7a91684a551802d6fb8534587cb3aec771103f97a9d1`

```dockerfile
```

-	Layers:
	-	`sha256:d7b180abc08e90b18c19dcf09bebeb173e66b97920a906b0b1bf245b4245431d`  
		Last Modified: Thu, 16 Jul 2026 00:32:27 GMT  
		Size: 5.8 MB (5773801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d61c8d780c3de000032a312afcfc76a559f6fe6dafa1753fb46cf85dccabeb01`  
		Last Modified: Thu, 16 Jul 2026 00:32:27 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.7` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:8dc941bc585d0d7e476221c5c70765650cc866b06348d6f7bbf6b84239f68b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.1 MB (477129663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac2fb15ea1720b62b8c8876f91eebabf6af4cfe25ab7d6cc9c647149ae7dd0f`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:24:50 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:f7c8e662c3292e2603100c327cf13d8efc9fc2dd911fb477df032cb5542cc0e4 in /      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:51 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:24:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:24:27Z" "architecture"="aarch64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:24:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:24:21 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 16 Jul 2026 00:24:21 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:31:07 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 16 Jul 2026 00:31:07 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:31:08 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 16 Jul 2026 00:31:08 GMT
RUN fc-cache -v # buildkit
# Thu, 16 Jul 2026 00:31:08 GMT
WORKDIR /usr/share/kibana
# Thu, 16 Jul 2026 00:31:08 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 16 Jul 2026 00:31:08 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:31:08 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:31:08 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 16 Jul 2026 00:31:08 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:31:09 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 16 Jul 2026 00:31:10 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 16 Jul 2026 00:31:10 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 16 Jul 2026 00:31:10 GMT
LABEL org.label-schema.build-date=2026-06-25T18:50:47.749Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=36e00282a99d328a291ef2eefb94fe83b741dd19 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T18:50:47.749Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=36e00282a99d328a291ef2eefb94fe83b741dd19 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Thu, 16 Jul 2026 00:31:10 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 16 Jul 2026 00:31:10 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:31:10 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 16 Jul 2026 00:31:10 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 16 Jul 2026 00:31:10 GMT
USER 1000
```

-	Layers:
	-	`sha256:7ce9fd1dd40cd1b3485743f9ba234221d41bec07d83f53e3336c641264fc8211`  
		Last Modified: Wed, 15 Jul 2026 06:14:31 GMT  
		Size: 38.8 MB (38829586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01a4aef5f3689f942afa592fca3518056996f7b84b64a42a7f3d4dcd16a3b`  
		Last Modified: Thu, 16 Jul 2026 00:32:16 GMT  
		Size: 19.3 MB (19281529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ab0867d78a0e0994ac3da9d5c6ab975cd56faef4fef1868d923e7ea6b47aa5`  
		Last Modified: Thu, 16 Jul 2026 00:32:23 GMT  
		Size: 402.5 MB (402461640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d158895804b91f3f191988339d388501489acdc8fcf3e7a86bae8da0c1c59c9`  
		Last Modified: Thu, 16 Jul 2026 00:32:14 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe39de79c1222118e93682e59b802b54015cd6122224c22ae60ad533dd21950`  
		Last Modified: Thu, 16 Jul 2026 00:32:16 GMT  
		Size: 16.5 MB (16460480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8123a93e4cc5c72260cafd847cb0ec33a1456241a91f3501369a33b679e8d067`  
		Last Modified: Thu, 16 Jul 2026 00:32:16 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9941366d1bdfdcf65bd001a6697a3b68972eb5a7a95698996c8eccdca6f19677`  
		Last Modified: Thu, 16 Jul 2026 00:32:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5553a5ad6513ab87ebc4532785e2629ec82a5b449ce8f79a82b64144cd79d21`  
		Last Modified: Thu, 16 Jul 2026 00:32:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4c588d9da41d56c686b9f3308db386bea6b6f387c4c797a6d2d9f831b5cb35`  
		Last Modified: Thu, 16 Jul 2026 00:32:17 GMT  
		Size: 4.9 KB (4930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41632240df04023b74196b5896abcaae3a7fbd2c99a76bc838c8f22cbf020d70`  
		Last Modified: Thu, 16 Jul 2026 00:32:18 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b00b71007c7c0f71735aaa12a945387996ea2af34eb1485be870fc513c9658d`  
		Last Modified: Thu, 16 Jul 2026 00:32:19 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220ab90f3741f8d9fbe78746baedeb1e93cacbcc59d109ce5ccce92e12c5fa43`  
		Last Modified: Thu, 16 Jul 2026 00:32:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897ac64e4c320900df4fb9589b8b78f62b9e7dc8f22922161469ca75fd3c3eb4`  
		Last Modified: Thu, 16 Jul 2026 00:32:20 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.7` - unknown; unknown

```console
$ docker pull kibana@sha256:29b3dfb998c32ac9939329a812bf5be39725ddbd214c7f8775b6175f6a52c092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5814174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d5ccc76623e73a7af9c1808873469c0392fb5b57d3905a67741feafcc33143a`

```dockerfile
```

-	Layers:
	-	`sha256:923cf9f6fc29ebad98fb7e430ba88653ea3a49deb54a4ccdaaca898e035d148f`  
		Last Modified: Thu, 16 Jul 2026 00:32:15 GMT  
		Size: 5.8 MB (5770691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca750f8690837e1f265a3d81b1211e56de691b06bca308d79379b79f2e7d6162`  
		Last Modified: Thu, 16 Jul 2026 00:32:14 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.3`

```console
$ docker pull kibana@sha256:cb05cc9f3c719bd304be6252950bd1691ff6a0eec560a045f9928ed235e3fac6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.3` - linux; amd64

```console
$ docker pull kibana@sha256:50057fc37f7508b71c24cd9c4a2032558fb7dd049d679e941edc826e90859a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531519392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16595fdca36b063f525cee47c23eefd35fbafdebfb383067ea9867dc05aeabd9`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:23:28 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 16 Jul 2026 00:23:28 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:47:15 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 16 Jul 2026 00:47:16 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:47:16 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 16 Jul 2026 00:47:16 GMT
RUN fc-cache -v # buildkit
# Thu, 16 Jul 2026 00:47:16 GMT
WORKDIR /usr/share/kibana
# Thu, 16 Jul 2026 00:47:16 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 16 Jul 2026 00:47:16 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:47:16 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:47:16 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 16 Jul 2026 00:47:16 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:47:17 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 16 Jul 2026 00:47:18 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 16 Jul 2026 00:47:18 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 16 Jul 2026 00:47:18 GMT
LABEL org.label-schema.build-date=2026-06-25T16:11:43.052Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9e9848d35f973e1f40f65d79760037228c54b7ab org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T16:11:43.052Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9e9848d35f973e1f40f65d79760037228c54b7ab org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Thu, 16 Jul 2026 00:47:18 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 16 Jul 2026 00:47:18 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:47:18 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 16 Jul 2026 00:47:18 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 16 Jul 2026 00:47:18 GMT
USER 1000
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29259245e6fb7fe6e6e15317762fa56bffa8b099c216d1054bec1eaf9469918b`  
		Last Modified: Thu, 16 Jul 2026 00:32:28 GMT  
		Size: 19.3 MB (19328286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bac5961a789dd18e51f2446e9b74091c3c4c6860f031bb516dc9c72731b11ac`  
		Last Modified: Thu, 16 Jul 2026 00:48:38 GMT  
		Size: 454.9 MB (454944552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd54b60647f401e17b201b47f35880b469f54b7e59769dd47c4cbad24e23f2ac`  
		Last Modified: Thu, 16 Jul 2026 00:48:28 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35e1b4aedccb31b6f543bd3abcb67c076e4e362710996ab6d529d1b782e7121`  
		Last Modified: Thu, 16 Jul 2026 00:48:29 GMT  
		Size: 16.5 MB (16460476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4b3019c95792b366fec4f80caf3141f3c86b98d8de3908bebc195c487e75cd`  
		Last Modified: Thu, 16 Jul 2026 00:48:28 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7242254122c6907b3a7c805c1272204a7980c2045f7f4740b89ed958c37c2abe`  
		Last Modified: Thu, 16 Jul 2026 00:48:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3fcd7d1e381b2ddfafebf9a6aa437f5813b53e05f50ebcc3a09d7c58c3fb60`  
		Last Modified: Thu, 16 Jul 2026 00:48:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e621e4a713dc866ceb2d79faf778e762dce81e93fe7dff020c86e0a1e67237e3`  
		Last Modified: Thu, 16 Jul 2026 00:48:31 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1595192faf9e0978f99aa20bb3618a3a3a2cb18d8c77fd2c13bc1465bd26560`  
		Last Modified: Thu, 16 Jul 2026 00:48:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c68fabbb626f9c1424d749fc959c09ba48b7bc52e454212286e953da023855`  
		Last Modified: Thu, 16 Jul 2026 00:48:31 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ac41661c139ada9aeb93281b535891fb65d0a2aad4e637ffeb37fcd278fa37`  
		Last Modified: Thu, 16 Jul 2026 00:48:32 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71295821a5bb820125a615a04dcedf03122f99808415e1708fc5bb651b363d1e`  
		Last Modified: Thu, 16 Jul 2026 00:48:32 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.3` - unknown; unknown

```console
$ docker pull kibana@sha256:8632a0bcb20bd043c84038638b677bd1f755086e51155fe281c3ff7bb21ab585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5885665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b41770c6c88260b83b4c44fdc3059f6ce7065b931fdaab749c0c9a7c5fdae91`

```dockerfile
```

-	Layers:
	-	`sha256:9be32d4a9dbe78e221fe556a27f7405399fa361b6fa8aeab2187b09646399d6c`  
		Last Modified: Thu, 16 Jul 2026 00:48:29 GMT  
		Size: 5.8 MB (5842439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:892cebe83f93b0f7561f1b42da05b9146381ea7013730dc6a6129061086d1273`  
		Last Modified: Thu, 16 Jul 2026 00:48:28 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:ba986d77feff386fe6f984814fd98db3955ffce91a14693635791fda539b70b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **542.6 MB (542572959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ec83e70bbb9db18d6707e77649e798ffac420409749f001e84de34070ad912`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:24:50 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:f7c8e662c3292e2603100c327cf13d8efc9fc2dd911fb477df032cb5542cc0e4 in /      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:51 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:24:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:24:27Z" "architecture"="aarch64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:24:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:24:24 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 16 Jul 2026 00:24:24 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:31:57 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 16 Jul 2026 00:31:58 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:31:58 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 16 Jul 2026 00:31:58 GMT
RUN fc-cache -v # buildkit
# Thu, 16 Jul 2026 00:31:58 GMT
WORKDIR /usr/share/kibana
# Thu, 16 Jul 2026 00:31:58 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 16 Jul 2026 00:31:58 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:31:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:31:59 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 16 Jul 2026 00:31:59 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:32:00 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 16 Jul 2026 00:32:01 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 16 Jul 2026 00:32:01 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 16 Jul 2026 00:32:01 GMT
LABEL org.label-schema.build-date=2026-06-25T16:11:43.052Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9e9848d35f973e1f40f65d79760037228c54b7ab org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T16:11:43.052Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9e9848d35f973e1f40f65d79760037228c54b7ab org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Thu, 16 Jul 2026 00:32:01 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 16 Jul 2026 00:32:01 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:32:01 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 16 Jul 2026 00:32:01 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 16 Jul 2026 00:32:01 GMT
USER 1000
```

-	Layers:
	-	`sha256:7ce9fd1dd40cd1b3485743f9ba234221d41bec07d83f53e3336c641264fc8211`  
		Last Modified: Wed, 15 Jul 2026 06:14:31 GMT  
		Size: 38.8 MB (38829586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a35a50a8a303134c6dd063a1f31fba9ec6192e2a037b7b037d2083c05ee53a`  
		Last Modified: Thu, 16 Jul 2026 00:33:20 GMT  
		Size: 19.3 MB (19281487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a5f5e37afba0858c5f9331ea7ddeb758c0bac229453c414df247a07fc0a7d`  
		Last Modified: Thu, 16 Jul 2026 00:33:28 GMT  
		Size: 467.9 MB (467904976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4826b2c1b68aca554b809cc27a00e46c8b411726e5d7b4d7b21c0315dc38ae92`  
		Last Modified: Thu, 16 Jul 2026 00:33:18 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be019a8faf2ad002ef812732aa53d2bcdf21f3843950a4126ed2e68ae33cc47`  
		Last Modified: Thu, 16 Jul 2026 00:33:19 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb70c7b10464b19d3ef9273afe31c47683ddc42a8da6d48ef4e77b4994ff771`  
		Last Modified: Thu, 16 Jul 2026 00:33:20 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ffc79096065912827256c72cab8102aab752945ecf2baa3695ddbe452416af`  
		Last Modified: Thu, 16 Jul 2026 00:33:21 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4388b1909d7a44b37693be0efa8be000bde2260a38a18691e71a1b2c259c133`  
		Last Modified: Thu, 16 Jul 2026 00:33:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b072445a97d672bf3574f559b6d983bd28fe32ff38adce1aea2d959e2342f1c`  
		Last Modified: Thu, 16 Jul 2026 00:33:22 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99165d1a2004b76d7a9cea66ee414005d73b2f15b4743d4ff0ef14c1b77ee2db`  
		Last Modified: Thu, 16 Jul 2026 00:33:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4acac648543af3f87c5af22383314a6351b06f6ae0a1d2890a8c3daa1977b6`  
		Last Modified: Thu, 16 Jul 2026 00:33:23 GMT  
		Size: 73.5 KB (73456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d406d138554e1ffd540b06633bbe577125ad8a59fa7daec936b38f30aa5baa0a`  
		Last Modified: Thu, 16 Jul 2026 00:33:23 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5667a3e3c58fda3a9425f2f8bcd2b704ae1b2a6f9842795a4343230d7c93f3`  
		Last Modified: Thu, 16 Jul 2026 00:33:24 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.3` - unknown; unknown

```console
$ docker pull kibana@sha256:b9df4eb76cc1d29646bb7530c936603bd160efcf94bc832b60b1a31de9ac4c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5882812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9193c7f7ab8e755fa20740731f79723087b5f1953def390a98e1095ea835c88`

```dockerfile
```

-	Layers:
	-	`sha256:c08fa6a6f1b64654232e03e52fa6f01ff813b5ec3e902c9cbbba086334e5343b`  
		Last Modified: Thu, 16 Jul 2026 00:33:19 GMT  
		Size: 5.8 MB (5839329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b90d0731d556b817abe7ba7514c839dd64d3778a166c0475083f1b758dddd9e9`  
		Last Modified: Thu, 16 Jul 2026 00:33:18 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
